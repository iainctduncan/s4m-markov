(post "loading s4m-bell-1.scm - bell seq experiment file")

(load-from-max "s4m-bell-seq.scm")

(define (live-play)
  (post "(live-play)")
  (send 'metro 1) 
  (send 'transport 1)
  (set-mutes #(1 1 1))
  (s1 'set :pitch-change :seq)
  (s1 'start :vel 70)
  (s2 'start :vel 70)
  (s3 'start :vel 70)
  )

(define (live-stop)
  (post "(live-stop)")
  (s1 'stop)
  (s2 'stop)
  (s3 'stop)
  (send 'metro 0) 
  (send 'transport 0)
  (send 'locate 0)
  )

; 12/8 standard bell
(define s1 (make-bell-seq 's1))
(s1 'set :channel 1  :step-dur 160    :pitch-change :seq   :change-prob 1
  ;:pitch-seq    '(60 67 63 70)   
  :pitch-seq    '(C5 G5 Eb5 Bb5 _)
  :beat-seq     #(2 2 1 2 2 2 1)
  :change-seq   #(0 0 1 0 1 0 1)
)

; cascara bell, fits in an even multiple
(define s2 (make-bell-seq 's2 :channel 2 
  :state 1   :step-dur 240    :pitch-change :post   :change-prob 1  
  :pitch-seq  '(77 80)   
  :beat-seq #(2 2 2 1 2 2 2 2 1)
))

(define s3 (make-bell-seq 's3 :channel 3
  :state 1   :step-dur 120    :change-on-dur 2  :pitch-change :both   
  :pitch-seq  #(36)   
  ;:beat-seq #(3 3 2 3 3 2 3 3 2 3 2 1 2)
  :beat-seq #(3 3 2 3 3 2) 
  ;:beat-seq #(3 3 2 3 3 2 3 3 2 3 2 3) 
))


; some possible transitions
(define (t1)
  ; 5 note pitch seq on the 12/8 bell
  (s1 'set :pitch-seq #(60 67 63 70 74))
  ; 3 note on cascara
  (s2 'set :pitch-seq #(77 80 82))
)
(define (t2)
  ; add gap on 12/8 bell
  (s1 'set :pitch-seq #(60 67 63 70 74 0 ))
  (s2 'set :pitch-seq #(77 80))
)
(define (t3)
  ; add gap on 12/8 bell
  (s1 'set :pitch-seq #(60 67 63 70 74 0 ))
  (s2 'set :pitch-change :post)
  (s2 'set :pitch-seq #(77 0 80 82))
)
(define (t4)
  "randomize if changes happen"
  (s1 'set :pitch-change :both)
  (s1 'set :change-prob 2)
  (s2 'set :pitch-change :both)
  (s2 'set :change-prob 2)
)
(define (t4n)
  "undo t4"
  (s1 'set :pitch-change :pre)
  (s1 'set :change-prob 1)
  (s2 'set :pitch-change :pre)
  (s2 'set :change-prob 1)
)


(post "ready...")


