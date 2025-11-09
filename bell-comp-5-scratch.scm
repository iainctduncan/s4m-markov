

(post "loading s4m-bell-1.scm - bell seq experiment file")
(load-from-max "s4m-bell-seq-jicv.scm")
(load-from-max "s4m-score-bell-version.scm")
(load-from-max "bell-comp-5-changes.scm")
(load-from-max "bell-comp-5-score.scm")

(define s1 (make-bell-seq 's1 :channel 1)) (define s2 (make-bell-seq 's2 :channel 2)) 
(define s3 (make-bell-seq 's3 :channel 3)) (define s4 (make-bell-seq 's4 :channel 4))
(define s5 (make-bell-seq 's5 :channel 5)) (define s6 (make-bell-seq 's6 :channel 6)) 
(define s7 (make-bell-seq 's7 :channel 7)) (define s8 (make-bell-seq 's8 :channel 8))
(define s9 (make-bell-seq 's9 :channel 9)) 

(define (tune val)
  ; send 0.5 octaves out all outputs, tune all to C
  (dolist (i '(0 1 2 3 4 5 7 8))
    (out 0 (list i val))))

(define (all-gates state)
  (dolist (obj '(es5-1 es5-2 es5-3 es5-4 es5-5 es5-6 es5-7 es5-8))
    (send obj state)))

(define just-triad '((1) (5/4) (3/2) (2)))
;  :pitch-seq  just-triad

(define (live-stop)
  (post "(live-stop)")
  (score 'stop)
  (all-gates 0)
  (dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 s9)) (s 'stop))
  (send 'metro 0) (send 'transport 0) (send 'locate 0))

(define (live-play)
  (post "(live-play)")
  (send 'metro 1) (send 'transport 1)
  ;(score 'cue 1) (score 'start)
  ;(set-mutes #(1 1 1 1 0 0 0 0 ))
  (set-mutes #(1 1 1 1   1 1 1 1  ))
  (dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 )) (s 'start))
)

(s1 'set :step-dur 160 :amp 0.0 :amp-unit 0.05 :pitch-change :all :base-ratio 1/1  
  :change-seq   '(0   1   1   0   1   0   0)
  :beat-seq     #(2   2   1   2   2   2   1)
  :amp-seq      '(4   3   2   4   2   3   2)
  :root         '(1/1)
  :pitch-seq    '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2) )  ; this is nice, uses both kinds of Maj 2
)

;(s1 'add-process (lambda ($ %) 
;                    (set! ($ :amp-seq 2) (+ ($ :amp-seq 2) .01))
;                    (set! ($ :amp-seq 0) (- ($ :amp-seq 0) .01)))
;  (hash-table :until (lambda($) (>= ($ :amp-seq 2) 3))))
;(s1 'add-process 
;  (lambda ($ %)(set! ($ :amp-seq 3) (+ ($ :amp-seq 3) .05)))
;  (hash-table :reps 100 :until (lambda($)(>= ($ :amp-seq 3) 4)))
;  'increasing-amp-3
;  )

(s2 'set :step-dur 160  :amp 0.0 :amp-unit 0.1 :delay 160 :pitch-change :all :base-ratio 1/1  
  :change-seq   '(1   0   1   0   1   0   0)
  :beat-seq     #(1   2   2   1   2   2   2)
  :amp-seq      '(4   4   4   4) 
  :root         '(1/1)
  :pitch-seq    '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2) )  ; same seq as s2 
  :pitch-seq    '((9/7 7/4 1/2) (2) (7/6) (8/7) (7/4) (4/3) (3/2))  ; same seq as s2 but order juggled and oct raised
)

;(s2 'add-process (lambda ($ %) 
;                    (set! ($ :amp-seq 3) (+ ($ :amp-seq 3) .01))
;                    (set! ($ :amp-seq 0) (- ($ :amp-seq 0) .01)))
;  (hash-table :until (lambda($)(>= ($ :amp-seq 3) 3)))) 

; 
(s3 'set :step-dur 160 :amp 0.0 :amp-unit 0.2 :delay 0  :pitch-change :all :base-ratio 1/1
  :beat-seq     #(3   2   2   3   2)
  :amp-seq      '(3   1   2   1   1    0   2   0   1  0 
                  3   1   2   1   1    0   2   0   1  2)
  :pitch-seq    '((7/4 1/2) (7/6) (9/7 7/4) (4/3) (3/2 2/2)
                  (7/4 1/2) (7/6) (9/7 7/4) (4/3) (2)
                 )
  ;:pitch-seq    '( 
  ;                 (7/4 1/2) (7/6) (9/7 7/4) (4/3) (3/2 1/2)
  ;                 (7/4 1/2) (3/2) (6/5) (4/3) (7/8 2) 
  ;                 (7/4 1/2) (7/6) (9/7 7/4) (4/3) (3/2 1/2)
  ;                 (7/4 1/2) (3/2) (6/5) (4/3) (2)
  ;               )
  ; this one stays on root
  :root '(1)
)

; good as first line to come in on top of 1 and 2; could try a process fade on it?
(s4 'set :step-dur 160  :amp 0.1 :amp-unit 0.2 :pitch-change :all  :base-ratio 1/1
  :beat-seq     #(3   2   3   3   2)
  :change-seq   #(1   1   1   1   1)
  :amp-seq    '(2 3 1 3)
  :root         '(1)
  :pitch-seq    '((1/1) (1/2) (7/4) (4/3 1/2) (9/7 7/4)) 
)

; let's make this simpler? 
(s5 'set :step-dur 160  :amp 0.0 :amp-unit 0.2  :delay 160 :pitch-change :seq  :base-ratio 2/1
  :beat-seq     #(1   3   1   1   3)
  :change-seq   #(1   1   0   1   0)
  :amp-seq    '(3 1 2 1)
  :root         '(1)
  :pitch-seq    '((4/3) (7/4) (3/2) (4/3 2/1))
  ; ?? 
  ;:pitch-seq    '((2/1) (7/8 2) (2/1 9/8) (7/8 2))
  :pitch-seq    '((3/2) (2/1))
  :pitch-seq    '((4/3) (2/1))
)

; nice, 
(s6 'set :step-dur 160 :amp 0.1 :amp-unit 0.1 :delay 0 :pitch-change :all  :base-ratio 2/1
  ;:beat-seq     #(1   1   2   1   1   1  2)
  :beat-seq     #(2   1   2   1   2  2  1)
  :amp-seq    '(3 2 3 2)
  :root         '(1)
  ;:pitch-seq    '((7/4 1/1) (7/6) (9/7 7/4) (3/2 1/2))
  :pitch-seq    '((7/4 2/1) (7/6) (7/4 1/1) (7/6) (7/4 2/1) (7/6) (9/7 7/4) (3/2 1/2) ) 
)

(s7 'set :step-dur 160  :amp 0.1 :amp-unit 0.2  :delay 160 :pitch-change :seq  :ref-cps 110 :base-ratio 2/1
  :beat-seq     #(1 1 1 1)
  :change-seq   #(1   1   1   1)
  :amp-seq    '(1 1 1 1)
  :root         '(1)
  :pitch-seq    '((1) (7/6) (4/3) (7/4) )
  :pitch-seq    '((1) (7/6) (7/4) (3/2) (8/7) (4/3))
)

(s8 'set :step-dur 160  :amp 0.1 :amp-unit 0.2  :delay 160 :pitch-change :seq :ref-cps 110  :base-ratio 2/1
  :beat-seq     #(3   2   3   2   2)
  :change-seq   #(1   1   0   1  0 )
  :amp-seq      '(1 1 1 1)
  :root         '(1)
  :pitch-seq    '((1) (7/6) (4/3) (7/4))
)


