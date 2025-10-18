

(post "loading s4m-bell-1.scm - bell seq experiment file")
(load-from-max "s4m-bell-seq-jicv.scm")
(load-from-max "s4m-score-bell-version.scm")
(load-from-max "bell-comp-4-score.scm")

(define s1 (make-bell-seq 's1 :channel 1)) (define s2 (make-bell-seq 's2 :channel 2)) 
(define s3 (make-bell-seq 's3 :channel 3)) (define s4 (make-bell-seq 's4 :channel 4))
(define s5 (make-bell-seq 's5 :channel 5)) (define s6 (make-bell-seq 's6 :channel 6)) 
(define s7 (make-bell-seq 's7 :channel 7)) (define s8 (make-bell-seq 's8 :channel 8))
(define s9 (make-bell-seq 's9 :channel 9)) 


(define (proc-1 $ c)
  (post "(PROC-1), $:" $ "conf:" c)
  (post "attempt to get at s1, posting ref-cps:" (s1 'get :ref-cps) ($ :ref-cps) )
  )

(s1 'add-process proc-1 (hash-table :reps 4) 'p1)


(define (tune val)
  ; send 0.5 octaves out all outputs, tune all to C
  (dolist (i '(0 1 2 3 4 5 7 8))
    (out 0 (list i val))))

(define (all-gates state)
  (dolist (obj '(es5-1 es5-2 es5-3 es5-4 es5-5 es5-6 es5-7 es5-8))
    (send obj state)))

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
  (set-mutes #(1 1 1 1   1 1 1 1 ))
  (set-mutes #(1 1 1 1   1 1 0 0  ))
  ;(dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 s9)) (s 'start))
  ;(dolist (s (list s1 s2 s3 s4 s5 s6)) (s 'start))
  ; temp while making process logic
  (dolist (s (list s1)) (s 'start))
)

(s1 'set :step-dur 160 :amp 0.1 :amp-unit 0.2 :pitch-change :all :base-ratio 1/1  
  :change-seq   '(0   1   1   0   1   0   0)
  :beat-seq     #(2   2   1   2   2   2   1)
  :amp-seq      '(3 1 3 1)
  ; asc arp 
  :root         '(3/2)
  :root         '(1/1)
  :pitch-seq    '((1) (9/7) (4/3) (7/4) (3/2 3/2) (9/7) (7/4))  ; lines up with pattern
  ;:pitch-seq    '((1) (9/7) (4/3) (7/4) (3/2 3/2) (7/4)  (1) (9/7) (4/3) (3/2 3/2) (7/4))
)

(s2 'set :step-dur 160  :amp 0.1 :amp-unit 0.2 :delay 160 :pitch-change :all :base-ratio 1/1  
  :change-seq   '(1   0   1   0   1   0   0)
  :beat-seq     #(1   2   2   1   2   2   2)
  :amp-seq      '(1 3 2 3)
  :root         '(1/1)
  :pitch-seq    '((1) (9/7) (4/3) (7/4) (9/7) (4/3) (7/4))
)

; another canon of the above keeper, works well on change both too (repeats notes like a delay)
(s6 'set :step-dur 160  :amp 0.1 :amp-unit 0.2 :delay 320 :pitch-change :seq :base-ratio 1/1  
  :change-seq   '(1   0   1   0   1   0   0)
  :beat-seq     #(1   2   2   1   2   2   2)
  :amp-seq      '(1 3 2 3)
  :root         '(1/1)
  :pitch-seq    '((1) (9/7) (4/3) (7/4) (9/7) (4/3) (7/4))
  :pitch-seq    '((2) (9/7) (4/3) (7/4) (9/4) (9/7) (7/4))  ; lines up with pattern
)


; good, could fade in with fewer notes?
(s3 'set :step-dur 160 :amp 0.1 :amp-unit 0.2 :delay 0  :pitch-change :all  :base-ratio 1/1
  :beat-seq     #(1   2   1   2   1   1   2)
  ;:change-seq   #(1   1   0   1   1   0   1)
  :pitch-seq    '((0) (7/4) (4/3) (9/7))
  ;:pitch-seq    '((2) (7/4) (4/3) (9/7) (0) (2 7/8)) ; also good
  :root '(1)
)

; quarter notes works under it, not sure about register
(s4 'set :step-dur 480  :amp 0.1 :amp-unit 0.2 :pitch-change :seq  :base-ratio 1/1
  :beat-seq     #(3   2   3   3   2)
  :change-seq   #(1   1   1   1   1)
  ;:change-seq   #(1   1   0   1   0   1   0)
  :amp-seq    '(2 3 1 3)
  :root         '(1)
  :pitch-seq    '((0/2) (1/1) (7/4) (4/3) (9/7)) 
)

; works
(s5 'set :step-dur 160  :amp 0.1 :amp-unit 0.2  :delay 160 :pitch-change :seq  :base-ratio 2/1
  :beat-seq     #(1   3   1   1   3)
  :change-seq   #(1   1   0   1  0 )
  :amp-seq    '(3 2 1 2)
  :root         '(1)
  :pitch-seq    '((1) (9/8) (7/4) (9/7) (3/2 3/2)) 
)

; maybe no sure if the 240 thing makes it any better
;(s6 'set :step-dur 240 :amp 0.1 :amp-unit 0.2 :delay 0 :pitch-change :all  :base-ratio 1/1
;  ;:beat-seq     #(1   1   2   1   1   1  2)
;  :beat-seq     #(1   2   2   1   2)
;  :amp-seq    '(3 2 3 2)
;  :root         '(1)
;  ;:pitch-seq    '((1) (6/5) (4/3) (7/4))
;  ;:pitch-seq    '((1) (3/2) (2/1) (9/8))
;  :pitch-seq    '((1) (2) (7/4) (4/3) (9/7))
;  ;:pitch-seq    '((1) (0) (7/4) (0) (4/3) (0) (9/8) (0) (2) (0))
;  ;:pitch-seq    '((1) (5/4) (3/2) (1/1))
;)


;; ka not sure if this should be at 0 or 12 transpose 
;(s7 'set :step-dur 160  :amp 50 :delay 160 :pitch-change :all  g 
;  :beat-seq     #(1 2)
;  :amp-seq    '(3 2)
;  :pitch-seq    '((1) (6/5) (4/3) (7/4))
;)
;
;(s8 'set :step-dur 160  :amp 60 :delay 0 :dur 120 :pitch-change :all  g  
;  :beat-seq     #(3   2   3   2   2)
;  :amp-seq '(3 2)
;  :pitch-seq    '((1) (6/5) (4/3) (7/4))
;)
;
;(s9 'set :step-dur 160  :amp 60 :delay 0 :dur 120 :pitch-change :all  g  
;  :beat-seq     #(3   2   3   2   2)
;  :amp-seq '(3 2)
;  :pitch-seq    '((1) (6/5) (4/3) (7/4))
;)
;
;
