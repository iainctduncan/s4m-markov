;; bell pattern sequencer

(load-from-max "helpers.scm")
(load-from-max "bell-seq-helpers.scm")
(load-from-max "music-helpers.scm")

(define (make-bell-seq name . init-args)

  (let ((playing? #f)             ; flag for if on or not (regardless of how clocked) 
        (delay-handle #f)         ; handle for self-scheduling
        (start-delay-handle #f)   ; handle for delayed starts
        (beat-index 0)            ; beat index within the beat-seq vector
        (step-index 0)            ; step index within full pattern, where step is the small unit
        (pitch-index 0)
        (vel-index 0)
        ; settings hash-table, holds serializable settings
        ; populating with basic seq stuff for now, even though it's unlikely to be used
        ($  (hash-table         
          :name           name
          :channel        1     
          :step-dur       120   ; duration of the short step (a 12/8 8th in standard bell pattern
          :dur           120    ; actual note duration
          :beat-seq      #f     ; vector of beat durs in steps: standard bell = [2 2 1 2 2 2 1]   
          :pitch-seq     #f     ; vector of pitch factors     
          :change-seq    #f     ; vector of which beats make a pitch change, when pitch-change = seq
          :vel-seq       #()     ; vector of relative velocities
          :vel           20     
          :vel-unit      10 
          :vel-slop      5      ; how much vel is randomized on each step
          :onset-slop    3      ; slop in ms for onset times
          :pitch-change  :all ; can be pre, post, both, every, none, or seq
          :change-prob    1     ; chance of a pitch index change happening, 1 = always, 2 = 50% etc
          :change-on-dur  1     ; beat duration that triggers a change
          :time-factor    1     ; a multipler for the sequencers conception of time
          :unmuted        1     ; does it play  
          :delay          0     ; ticks of delay before starting
          :transpose      0     
          )))          
   
    ; todo: allow aliases
    (define (alias k1 k2)
      '())
      ;(if (member? k1 (ky 

    (define env (curlet))

    (define (note-out chan pitch vel dur)
      (let* ((note-num (if (number? pitch) 
                            pitch 
                            (note-sym->note-num pitch))))
        ; only send out notes above note num 0
        (if (and note-num (> note-num 0))
          (let ((note-num-out (+ note-num ($ :transpose)))
                (onset-delay  (/ (random (* 1000 ($ :onset-slop))) 1000.0)))
            (delay onset-delay (lambda() 
              (out 0 (list chan note-num-out vel dur))))))))

    (define (seq-read seq index)
      "read an element from a sequence, allowing wrapping"
      (let* ((seq-len (length seq))
             (i-max   (- seq-len 1))
             (i       (if (> index i-max) (modulo index i-max) index)))
        (seq i)))       

    ; step handler that does step logic, this is what gets scheduled
    (define (run-step)
      ;(post "(run-step)")
      ; call play-step with current step-index
      (let* ((beat-dur ($ :beat-seq beat-index)))
        ; now play, will have access to ($ :beat-dur) 
        (set! ($ :beat-dur) beat-dur)
        (play-step)
        ; update step counters, inc-to automatically rolls over to zero
        (inc-to! beat-index (length ($ :beat-seq))) 
        (inc-to! vel-index (length ($ :vel-seq))) 
        ; schedule next step if playing 
        (if playing? 
          (let ((delay-dur (* beat-dur ($ :step-dur))))
            (set! delay-handle (delay-t delay-dur run-step)))))
    ); end run-step

    (define (play-step)
      ;(post "(play-step) beat-dur: " ($ :beat-dur) "beat index:" beat-index)
      ;(post "  pitch-seq:" ($ :pitch-seq))
      ; if we are on a short beat and pitch-change is pre, flip
      (if (and (= ($ :beat-dur) ($ :change-on-dur)) 
            (member? ($ :pitch-change) '(:pre :both)))
        (inc-pitch-index))

      (let* ((pitch (seq-read ($ :pitch-seq) pitch-index))
             (vel  (get-vel vel-index))
             (dur  ($ :dur)))
        ;(post "  - out: " pitch vel dur)
        (if (and (= 1 ($ :unmuted)) (> vel 0))
          (note-out ($ :channel) pitch vel dur)))

      (if (and (eq? ($ :pitch-change) :seq)
               (= 1 (seq-read ($ :change-seq) beat-index)))
               ;(= 1 ($ :change-seq beat-index)))
        (inc-pitch-index))         

      (if (or
            (eq? ($ :pitch-change) :all)
            (and (= ($ :beat-dur) ($ :change-on-dur)) 
              (member? ($ :pitch-change) '(:post :both))))
        (inc-pitch-index))
    ); end play-step

    (define (get-vel vel-index)
      "calculate output velocity from a step-vel"
      (let* ((step-vel (if (> (length ($ :vel-seq)) 0)
                         ; if there is a vel seq, use, else base vel
                         (seq-read ($ :vel-seq) vel-index)
                         ($ :vel)))
             (vel   (+ ($ :vel) (* step-vel ($ :vel-unit))))
             (vel   (+ vel (random ($ :vel-slop)))))
        (cond 
          ((> vel 127)
            127)
          ((< vel 0)
            0)
          (else
            vel))))

    (define (seq-read seq index)
      "safe reading from a seq, wraps if out of bounds"
      (if (> (length seq) index)
        (seq index)
        ; else wrap
        (seq (modulo index (length seq)))))

    (define (inc-pitch-index)
      (if (= 0 (random ($ :change-prob)))
        (inc-to! pitch-index (length ($ :pitch-seq)))))

    ; some aliases
    (define (p seq)
      (set! ($ :pitch-seq) seq))

    (define (get k) 
      "get var from settings hash if keyword, or local env otherwise"
      ;(post "(get k) k:" k)
      (if (keyword? k) ($ k) (env k)))
    
    ; old non recursive version
    ;(define (set k v) 
    ;  "set var in settings hash for keywords, local env otherwise"
    ;  (if (keyword? k) (set! ($ k) v) (set! (env k) v)))

    (define (set . args) 
      "set var in settings hash for keywords, local env otherwise"
      (let* looptop ((arglist args) (k (arglist 0)) (v (arglist 1)))
        (if (keyword? k) (set! ($ k) v) (set! (env k) v))
          (if (> (length arglist) 2)
            (looptop (cddr arglist)))))

    ; cancel next scheduled iteration and stop playback
    (define (stop)
      (post "stopping seq" name)
      (cancel-delay delay-handle)
      (cancel-delay start-delay-handle)
      (set! playing? #f))

    (define (start)
      (if (> ($ :delay) 0)
        (set! start-delay-handle 
          (delay-t ($ :delay) _start))
        ; else just start
        (_start)))

    ; reset state to beginning and start playback
    (define (_start)
      (reset)
      (set! playing? #t)
      (run-step))

    (define (reset)
      (cancel-delay delay-handle)
      (set! step-index 0))
 
    ; loop through arg list, stripping out kw/v pairs and applying them
    ; this allows setting state vars using k/v pairs in any method call
    (define (process-kwargs args)
      "filter kwargs arguments, setting in settings hash and removing from args"
      ;(post "process-kwargs" args)
      (let kwargs-loop ((args args))
        (cond 
          ((null? args) '())
          ((keyword? (car args))
            ; keywords go into the state dict
            (set! ($ (car args)) (cadr args))
            (kwargs-loop (cddr args)))
          (else 
              (cons (car args) (kwargs-loop (cdr args)))))))

    (define (export-envs name)
      "export this seqs env to rootlet for debugging/hacking"
      ; save env as {name}-env and {name-env$} in the global namespace
      (let ((env-name (string->symbol (string-append (symbol->string name) "-env")))
            (env-name$ (string->symbol (string-append (symbol->string name) "-env$"))))
        (varlet (rootlet) env-name env)
        (varlet (rootlet) env-name$ (env '$))
        ;(post "step-seq env exported as" env-name)
    ))

    ; constructor logic
    (define (init init-args)
      "constructor, sets up values and initializes sequencer"
      ; call process-kwargs to setup kwarg settings
      (process-kwargs init-args)
      ; if initial seq data not passed in as constructor arg, make it
      ;(if (not ($ :seq-data))   (init-seq-data ($ :params) ($ :steps)))
      ;(if (not ($ :beat-seq)) (init-beat-seq))
      
      ; init loop-len and loop-top to num steps if not set in constructor
      (if (not ($ :loop-len)) (set! ($ :loop-len) ($ :steps)))
      (export-envs name)       
    )
     
    ; call the constructor
    (init init-args)

    (lambda args
      "message dispatcher"
      ;(log-debug "dispatch:" args)
      (let* ((msg (car args)) 
             (fun-args (cdr args))
             (no-process-funs '(get set))  ; list of methods that don't get kwarg processing
             ;(no-process-funs '(get))  ; list of methods that don't get kwarg processing
             (fun-args (if (member? msg no-process-funs) fun-args (process-kwargs fun-args))))
        (apply (eval msg) fun-args)))
     
)); end main let and define

