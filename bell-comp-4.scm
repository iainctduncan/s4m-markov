

(post "loading s4m-bell-1.scm - bell seq experiment file")
(load-from-max "s4m-bell-seq.scm")
(load-from-max "s4m-score-bell-version.scm")
(load-from-max "bell-comp-4-score.scm")

(define s1 (make-bell-seq 's1 :channel 1)) (define s2 (make-bell-seq 's2 :channel 2)) (define s3 (make-bell-seq 's3 :channel 3)) (define s4 (make-bell-seq 's4 :channel 4))
(define s5 (make-bell-seq 's5 :channel 5)) (define s6 (make-bell-seq 's6 :channel 6)) (define s7 (make-bell-seq 's7 :channel 7)) (define s8 (make-bell-seq 's8 :channel 8))

(define (live-stop)
  (post "(live-stop)")
  (score 'stop)
  (dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 )) (s 'stop))
  (send 'metro 0) (send 'transport 0) (send 'locate 0))

(define (live-play)
  (post "(live-play)")
  (send 'metro 1) (send 'transport 1)
  (score 'cue 1) (score 'start)
  ;(set-mutes #(1 1 1 1 1 1 1 1 ))
  ;(dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 )) (s 'start))
)

(s1 'set :step-dur 160 :vel 40 :vel-unit 12 :pitch-change :seq  :transpose 12 
  ;:pitch-seq    '(C5 Bb5)      ; 1
  :pitch-seq    '(C5 Bb5 D5 G5)  ; 2
  :change-seq   '(0   1   1   0   1   1   0)
  :beat-seq     #(2   2   1   2   2   2   1)
  :vel-seq      '(3 1 2 1)
)

(s2 'set :step-dur 320  :vel 40 :vel-unit 12 :delay 320 :pitch-change :seq :transpose 0
  :pitch-seq    '(C5 Bb5 D5)    ; 1
  :pitch-seq    '(C5 _ D5 G5)  ; 2
  :change-seq   '(1   0   1   0   1   1   0)
  :beat-seq     #(2   2   1   2   2   2   1)
  :vel-seq      '(1 3 2 3)
)

; not sure about initial pitches
(s3 'set :step-dur 320  :vel 40   :delay 0   :pitch-change :all :transpose -12
  :pitch-seq    '(_ _ D5 F5 G5 _ _ D5 F5 G5 C5 _ )
  ;:pitch-seq    '(_ _ D5 F5 G5 _ _ _ D5 F5 G5 C5 ); - seq 2
  :beat-seq     #(2   1   2   2   2   1   2)
  :change-seq   #(1   1   1   1   1   1   1)
  :vel-seq    '(1 3 2 1 2)
)

(s4 'set :step-dur 320  :vel 40 :delay 160 :pitch-change :seq  :transpose -12
  ;:pitch-seq    '(G5  F5  D5 Bb A6) 
  :pitch-seq    '(D5 F5 _ G5 C5 _) 
  ;:pitch-seq    '(C5 Bb4 D5)
  ;:pitch-seq    '(Bb5 C6  G5  F5  D5  ) 
  :beat-seq     #(3   2   3   3   2)
  :change-seq   #(1   1   0   1  0 )
  ;:change-seq   #(1   1   0   1   0   1   0)
  :vel-seq    '(2 3 1 3)
)

(s5 'set :step-dur 160  :vel 50 :delay 0 :pitch-change :all  :transpose 0
  ;:pitch-seq    '(F5  G5  _ _ _ _) 
  ;:pitch-seq    '(F5  G5  _ _ C6 D5) 
  :pitch-seq    '(G4 Bb4  _ _ D5 C5) 
  :beat-seq     #(1   3   1   1   3)
  :change-seq   #(1   1   0   1  0 )
  :vel-seq    '(3 2 1 2)
)

; not sure if this should be at 0 or 12 transpose 
(s6 'set :step-dur 240 :vel 40 :delay 0 :pitch-change :all  :transpose 0
  ;:pitch-seq    '(_   A5 G5   _  _ _)
  ;:pitch-seq    '(A5 G5 _) ; then this
  :pitch-seq    '(A5 G5 _ _ _ _)  ; seq 1
  ;:beat-seq     #(1   1   2   1   1   1  2)
  :beat-seq     #(1   2   2   1   2   1)
  :vel-seq    '(3 2 3 2)
)
; ka not sure if this should be at 0 or 12 transpose 
(s7 'set :step-dur 160  :vel 50 :delay 160 :pitch-change :all  :transpose 12 
  ;:pitch-seq    '(D6 G5 _ _)
  :pitch-seq    '(C6 Bb5 _ _ D6 G5 _ _ ) 
  ;:pitch-seq    '(C6 Bb5 _ _ _ _ _ _ D6 G5 _ _ _ _ _ _ ) 
  ;:pitch-seq    '(C6 Bb5 _ _ D,s,z6 G5 _ _ C6 Bb5 D6 _ G5 _ Bb5 _ ) 
  :beat-seq     #(1 2)
  :vel-seq    '(3 2)
)

(s8 'set :step-dur 160  :vel 60 :delay 0 :dur 120 :pitch-change :all  :transpose -24  
  ;:pitch-seq    '(C5  Bb5 _  D5 Bb4)
  :pitch-seq    '(C5  Bb5 G5 _ _ )
  ;:pitch-seq    '(E5  F5 C5 _ Bb5 ) ; get to here
  ;:pitch-seq    '(C5  Bb5 G5 _ _   C5 Bb5 G5 _ _   Bb5 F4 E4 _ _  A5 F4 E4 _ _ )
  :beat-seq     #(3   2   3   2   2)
  :vel-seq '(3 2)
)




