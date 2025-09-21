;; file for the markov component
(post "s4m-markov-seq.scm")

(load-from-max "helpers.scm")
(load-from-max "markov-helpers.scm")

(define (markov-seq name . init-args)

  (let ((playing? #f)             ; flag for if on or not (regardless of how clocked) 
        (delay-handle #f)         ; handle for self-scheduling
        (step-index 0)            ; step index within full pattern
        ; settings hash-table, holds serializable settings
        ; populating with basic seq stuff for now, even though it's unlikely to be used
        ($  (hash-table         
          :params         1
          :steps          128   ; number of steps in a sequence
          :step-dur       60    ; step-duration in ticks
          :loop-len       #f    ; if set, is length of loops in steps, if #f, loop is length of sequence vector
          :channel        0     
          :seq-data       #f    ; sequence data, will be multi-dimensional vector 
          :time-factor    1     ; a multipler for the sequencers conception of time
          ; markov specific stuff
          :state          #f
          :prev-states    '()   ; hold prev states up to markov-order
          :max-order      2     ; max order used
          :state-map      (hash-table)
          :output-map     (hash-table)
          :transpose      0  
          :base-vel       90
          :base-dur       40
          )))
    (define env (curlet))

    (define (play-step)
      ;(post "(play-step) curr- state:" ($ :state))
      (let* ((curr-state ($ :state))
             (state-candidates (get-state-candidates)))
        (if (not state-candidates)
          (post "error, no state key for state" curr-state "in map:" ($ :state-map))
          ; else get next state and send to output fun
          (begin
            (let ((new-state (weighted-choice state-candidates)))
              (save-state new-state)
              (output new-state))))
        ; change the time factor somehow
        (update-time-factor curr-state)))


    (define (get-state-candidates)
      "get the state candidate hashtable from the current state(s)
       looks for state-maps using successively smaller slices of prev states,
       from max-order down, allowing multi-order state-maps"
      (post "(get-state-candidates)")
      (let ((ord ($ :max-order))
            (state-map #f))
        (while (> ord 0)
          ;(post "ord:" ord "prev-states:" ($ :prev-states))
          (let* ((key (if (> ord 1) (list-head ord ($ :prev-states)) ($ :state)))
                 (_ (post "  - state key:" key))
                 (smap ($ :state-map key)))
            (if smap 
              (begin (set! state-map smap) (break)))
          (set! ord (- ord 1))))
        (post "found map:" state-map)
        state-map))
      

    (define (save-state new-state)
      (post "(save-state) new-state:" new-state)
      (set! ($ :prev-states) (cons new-state ($ :prev-states)))
      (set! ($ :state) new-state)
      ;(post "  - prev-states: " ($ :prev-states))
      )


    ; output function, can be overriden by client
    (define (output val)
      ;(post "markov-set 'output, val:" val)
      (let* ((outputter ($ :output-map val))
             (val (if (procedure? outputter) (outputter val) outputter))
             (offset ($ :transpose))
             (outval (+ offset val))
             (vel    ($ :base-vel))
             (dur    ($ :base-dur)))
        (out 0 (list outval vel dur))))

    ; possible time implementation
    (define (update-time-factor state)
      ())
      ;(let (
      ;      ;(factors '(.5 .666 .75 1 1.25  1.333 1.5 1.6666 1.75 2.0)))
      ;      (factors '(.666 .75 1 1.25  1.333)))
      ;  (if (= 0 (random 1))
      ;    (set! ($ :time-factor) (factors (random (length factors)))))))

    (define (weighted-choice state-map)
      "return a weighted random choice from a state map of states and relative weights"
      ; state candidates are only those whose value is in the output map
      ; ie, ignore state options that aren't currently enabled in the output map
      (post "(weighted-choice) state-map:" state-map)
      (let* ((states (filter-hash-table 
                       (lambda (k v) (if ($ :output-map k) #t #f))
                       state-map))
             ;(_ (post "  - states after filtering:" states))
             (prob-sum (apply + (hash-table-values states)))
             (_ (post "prob-sum:" prob-sum))
             (states-flat '()))
        (if (= 0 prob-sum)
          (post "ERROR in markov-seq::weighted-choice, no reachable states in state-map" states))
        (dolist (k (hash-table-keys states))
          ; only use states that are in the current output map
          (if ($ :output-map k)
            (set! states-flat (append states-flat (make-list (states k) k)))))
        (states-flat (random prob-sum))))

    (define (get k) 
      "get var from settings hash if keyword, or local env otherwise"
      ;(post "(get k) k:" k)
      (if (keyword? k) ($ k) (env k)))
      
    (define (set k v) 
      "set var in settings hash for keywords, local env otherwise"
      (if (keyword? k) (set! ($ k) v) (set! (env k) v)))

    ; step handler that does step logic, this is what gets scheduled
    (define (run-step)
      ; call play-step with current step-index
      (play-step)
      ; update step counter, inc-to automatically rolls over to zero
      (inc-to! step-index ($ :loop-len))
      ; schedule next step if playing 
      (if playing? 
        (let ((delay-dur (* ($ :time-factor) ($ :step-dur))))
          (set! delay-handle (delay-t delay-dur run-step))))
    ); end run-step

    ; cancel next scheduled iteration and stop playback
    (define (stop)
      (cancel-delay delay-handle)
      (set! playing? #f))

    ; reset state to beginning and start playback
    (define (start)
      (reset)
      (set! playing? #t)
      (run-step))

    (define (reset)
      (cancel-delay delay-handle)
      (set! step-index 0))
 
    ; not really relevant to markov version yet, but leaving in
    (define (init-seq-data params steps)
      "initialize the internal sequence data"
      ; make a vector of {params} vectors to hold our seq data
      ; and initialize to zeros
      (set! ($ :seq-data) (make-vector params #f)) 
      (for-each 
        (lambda(i)(set! (($ :seq-data) i) (make-vector steps 0))) 
        (range 0 params)))

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
      (if (not ($ :seq-data))   (init-seq-data ($ :params) ($ :steps)))
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
             (fun-args (if (member? msg no-process-funs) fun-args (process-kwargs fun-args))))
        (apply (eval msg) fun-args)))
     
)); end main let and define

