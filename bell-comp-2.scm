(post "loading s4m-bell-1.scm - bell seq experiment file")
(load-from-max "s4m-bell-seq.scm")
(load-from-max "bell-seq-helpers.scm")
(load-from-max "s4m-score-bell-version.scm")
(load-from-max "bell-comp-2-score.scm")

(define s1 (make-bell-seq 's1 :channel 1)) (define s2 (make-bell-seq 's2 :channel 2)) (define s3 (make-bell-seq 's3 :channel 3)) (define s4 (make-bell-seq 's4 :channel 4))
(define s5 (make-bell-seq 's5 :channel 5)) (define s6 (make-bell-seq 's6 :channel 6)) (define s7 (make-bell-seq 's7 :channel 7)) (define s8 (make-bell-seq 's8 :channel 8))
(define s9 (make-bell-seq 's9 :channel 9)) (define s10 (make-bell-seq 's10 :channel 10)) (define s11 (make-bell-seq 's11 :channel 11)) (define s12 (make-bell-seq 's12 :channel 12))
(set-mutes #(1  1  1  1  1  1  1  0  0  0  0  0  ));
;(set-mutes #(1 1 0 0  0 0 1 1  1 1 1 1))
;(set-mutes #(0 0 0 0   0 0 0 0  1 0 0 0))

(define (live-stop)
  (post "(live-stop)")
  (dolist (s (list s1 s1b s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12)) (s 'stop))
  (send 'metro 0) (send 'transport 0) (send 'locate 0))

(define (live-play)
  (post "(live-play)")
  (send 'metro 1) (send 'transport 1)
  (score 'cue 1) (score 'start)
  ;(dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12)) (s 'start))
)

(s1 'set :channel 1   :step-dur 160 :vel 80 :pitch-change :all 
  :pitch-seq    '(D5 F#5 G#5 C6)
  ;:pitch-seq    '(D5 F#5 C6 G#5)
  ;:pitch-seq    '(C5  Ab5 D5  F5  G5  E5  F#5)
  :beat-seq     #(2   2   1   2   2   2   1)
)
;(define s1b (make-bell-seq 's1b :channel 1))
;(s1b 'set :step-dur 160 :vel 50 :delay 480 :pitch-change :all
;  ;:pitch-seq    '(D5 F#5 G#5 C6)
;  :pitch-seq    '(C6 G#5 F#5 D5 )
;  ;:pitch-seq    '(C5  Ab5 D5  F5  G5  E5  F#5)
;  :beat-seq     #(2   2   1   2   2   2  1) 
;  ;:beat-seq     #(1   2   2   2  1 2 2) 
;)

(s2 'set :step-dur 480  :vel 90   :delay 0   :pitch-change :all :transpose -12
  :pitch-seq    '(D5 F#5 G#5 C6)
  ;:pitch-seq    '(D5 F#5 C6 G#5)
  ;:pitch-seq    '(D5 F#5 G#5 C6 Eb5)
  ;:beat-seq     #(2   2   1   2   2   2   1)
  :beat-seq     #(2   1   2   2   2   1   2)
  :change-seq   #(1   1   1   1   1   1   1)
)

(s3 'set :step-dur 320  :vel 60  :delay 320 :pitch-change :all :transpose 0
  ;:pitch-seq    '(D5 F#5 G#5 C6 Eb5 A5)
  :pitch-seq    '(D5 F#5 G#5 C6)
  :beat-seq     #(2   2   1   2   2   2   1)
  :change-seq   #(1   1   1   1   1   1   1)
)

; set same theme 
(s4 'set :step-dur 320  :vel 90  :delay 320  :pitch-change :all :transpose -12
  ;:pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  ;:beat-seq     #(2   2   2   1   2   2   1)
  :beat-seq     #(2   1   2   2   2   1   2)
  :change-seq   #(1   1   1   1   1   1   1)
)

; good
(s5 'set :step-dur 160  :vel 40   :delay 0   :pitch-change :pre  :transpose 12
  ;:pitch-seq    '(Bb5 A5 _ _ _ )
  :beat-seq      #(2   2   1   2   1)
)

; reflection of the melody line (not sure about this one)
(s6 'set :step-dur 160  :vel 60 :delay 0 :pitch-change :seq  :transpose -24
  :pitch-seq    '(Bb5 C6  G5  F5  D5  Bb4 C5) 
  :pitch-seq    '(Bb5 C6  G5  F5  D5  Bb4) 
  ;:pitch-seq    '(Bb5 C6  G5  F5  D5  ) 
  :beat-seq     #(3   2   3   3   2)
  :change-seq   #(1   1   0   1  0 )
  ;:change-seq   #(1   1   0   1   0   1   0)
)

; bass line
(s7 'set :step-dur 160  :vel 60 :delay 0 :pitch-change :all  :transpose -36
  ;:pitch-seq    '(F5  G5  _ _ _ _) 
  :pitch-seq    '(F5  G5  _ _ ) 
  ;:pitch-seq    '(F5  G5  _ _ F5 G5 _ Bb6) 
  ;:pitch-seq    '(Bb5 C6  G5  F5  D5  ) 
  :beat-seq     #(1   3   1   1   3)
  :change-seq   #(1   1   0   1  0 )
)

; the two triplet thing
(s8 'set :step-dur 160  :vel 60 :delay 0 :pitch-change :all  :transpose 12
  :pitch-seq    '(_   A5 G5   _  _ _)
  ;:pitch-seq    '(_   F#5 Eb5   _  _ _)
  :beat-seq     #(1   1   2   1   1   1  2)
)



; the kaa 
(s9 'set :step-dur 160  :vel 80 :delay 160 :pitch-change :all  :transpose 12
  ;:pitch-seq    '(C5 Bb5 D5  F5  G5  C6  Bb5)
  :pitch-seq    '(C6 Bb5 _ _) 
  ;:pitch-seq    '(C6 Bb5 _ _ F5 G5 _ _) 
  ;:pitch-seq    '(C5 Bb5 D5  F5  G5  C6  Bb5)
  :beat-seq     #(1 2)
)

; the below are not active
(s10 'set :step-dur 192  :vel 0 :delay 96 :pitch-change :pre  :transpose 36  :channel 9
  :pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  :beat-seq     #(1   2   1   1   2   1   2)
)
(s11 'set :step-dur 192  :vel 0 :delay 192 :pitch-change :pre  :transpose 48 :channel 9
  :pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  :beat-seq     #(2   1   2   1   1   2   1)
)
(s12 'set :step-dur 384  :vel 0 :delay 80 :pitch-change :all  :transpose 19
  :pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  ;pitch-seq    '(C5 Bb5)
  :beat-seq     #(1  1  2   1   1   2   1   2  1)
)
