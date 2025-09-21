;; file to be the seq object template

(load-from-max "helpers.scm")

(define (template-seq name . init-args)

  (let ((playing? #f)             ; flag for if on or not (regardless of how clocked) 
        (delay-handle #f)         ; handle for self-scheduling
        (step-index 0)            ; step index within full pattern
        ; settings hash-table, holds serializable settings
        ; populating with basic seq stuff for now, even though it's unlikely to be used
        (_  (hash-table         
          :params         1
          :steps          128   ; number of steps in a sequence
          :step-dur       480   ; step-duration in ticks
          :loop-len       #f    ; if set, is length of loops in steps, if #f, loop is length of sequence vector
          :channel        0     
          :seq-data       #f    ; sequence data, will be multi-dimensional vector 
          :time-factor    1     ; a multipler for the sequencers conception of time
          )))          

    (define env (curlet))

    (define (play-step)
      (post "(play-step)")
    )

    (define (get k) 
      "get var from settings hash if keyword, or local env otherwise"
      ;(post "(get k) k:" k)
      (if (keyword? k) (_ k) (env k)))
      
    (define (set k v) 
      "set var in settings hash for keywords, local env otherwise"
      (if (keyword? k) (set! (_ k) v) (set! (env k) v)))

    ; step handler that does step logic, this is what gets scheduled
    (define (run-step)
      ; call play-step with current step-index
      (play-step)
      ; update step counter, inc-to automatically rolls over to zero
      (inc-to! step-index (_ :loop-len))
      ; schedule next step if playing 
      (if playing? 
        (let ((delay-dur (* (_ :time-factor) (_ :step-dur))))
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
      (set! (_ :seq-data) (make-vector params #f)) 
      (for-each 
        (lambda(i)(set! ((_ :seq-data) i) (make-vector steps 0))) 
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
            (set! (_ (car args)) (cadr args))
            (kwargs-loop (cddr args)))
          (else 
              (cons (car args) (kwargs-loop (cdr args)))))))

    (define (export-envs name)
      "export this seqs env to rootlet for debugging/hacking"
      ; save env as {name}-env and {name-env_} in the global namespace
      (let ((env-name (string->symbol (string-append (symbol->string name) "-env")))
            (env-name_ (string->symbol (string-append (symbol->string name) "-env_"))))
        (varlet (rootlet) env-name env)
        (varlet (rootlet) env-name_ (env '_))
        ;(post "step-seq env exported as" env-name)
    ))

    ; constructor logic
    (define (init init-args)
      "constructor, sets up values and initializes sequencer"
      ; call process-kwargs to setup kwarg settings
      (process-kwargs init-args)
      ; if initial seq data not passed in as constructor arg, make it
      (if (not (_ :seq-data))   (init-seq-data (_ :params) (_ :steps)))
      ; init loop-len and loop-top to num steps if not set in constructor
      (if (not (_ :loop-len)) (set! (_ :loop-len) (_ :steps)))
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

