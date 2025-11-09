; ensemble for tuning the modular

(post "loading ji-mod-tuner.scm - for tuning mods")
(load-from-max "s4m-bell-seq-jicv.scm")

(define s1 (make-bell-seq 's1 :channel 1)) (define s2 (make-bell-seq 's2 :channel 2)) 
(define s3 (make-bell-seq 's3 :channel 3)) (define s4 (make-bell-seq 's4 :channel 4))
(define s5 (make-bell-seq 's5 :channel 5)) (define s6 (make-bell-seq 's6 :channel 6)) 
(define s7 (make-bell-seq 's7 :channel 7)) (define s8 (make-bell-seq 's8 :channel 8))

(define (tune val)
  ; send 0.5 octaves out all outputs, tune all to C
  (dolist (i '(0 1 2 3 4 5 7 8))
    (out 0 (list i val))))

(define (all-gates state)
  (dolist (obj '(es5-1 es5-2 es5-3 es5-4 es5-5 es5-6 es5-7 es5-8))
    (send obj state)))

(define (live-stop)
  (post "(live-stop)")
  (all-gates 0)
  (dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 )) (s 'stop))
  (send 'metro 0) (send 'transport 0) (send 'locate 0))

(define (live-play)
  (post "(live-play)")
  (send 'metro 1) (send 'transport 1)
  (set-mutes #(1 1 1 1   1 1 1 1 ))
  (dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 )) (s 'start))
)

(define roots-only-seq #((1)))

; set all sequencers to the same content
(set-mutes #(1 1 1 1   1 1 1 1  ))

(define (tune)
  (dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8))
    (s 'set :step-dur 480 :dur 300 :amp 0.4 :amp-unit 0.2 :pitch-change :all :base-ratio 1/1  
       :beat-seq     #(1 1 1 1)  :amp-seq '(1 1 1 1) :root '(1) :pitch-seq    '((1) (5/4) (3/2) (2/1))
    )))

