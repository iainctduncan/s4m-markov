;stuff I might come back to

; reflection of the melody line (not sure about this one)
;(s5 'set :step-dur 240  :vel 60 :delay 360 :pitch-change :both  :transpose 12
;  ;:pitch-seq    '(Bb5 C6  G5  F5  D5  Bb4 C5 G4  D5)
;  :pitch-seq    '(Bb5 C6  G5  F5  D5  Bb4 C5) 
;  :beat-seq     #(2   2   2   1   2   2   2   2   1)
;  ;:beat-seq     #(2   1   2   2   1)I
;  ;:change-seq   #(1   1   1   0   1   1   1   1   0)
;  :change-seq   #(1   1   0   1   1   1   0)
;)


;echoing delay idea, cool but doesn't really work in the piece

; 3 seqs sending same line to with algo delays 
(s9 'set :step-dur 192  :vel 80 :delay 0 :pitch-change :pre  :transpose 24
  ;:pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  :pitch-seq    '(C5  Bb5 D5  F5  G5)
  ;pitch-seq    '(C5 Bb5)
  :beat-seq     #(2   1   1   2   1   2  1)
)
(s10 'set :step-dur 192  :vel 60 :delay 96 :pitch-change :pre  :transpose 36  :channel 9
  :pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  :pitch-seq    '(C5  Bb5 D5  F5  G5)
  ;pitch-seq    '(C5 Bb5)
  :beat-seq     #(1   2   1   1   2   1   2)
)
(s11 'set :step-dur 192  :vel 30 :delay 192 :pitch-change :pre  :transpose 48 :channel 9
  :pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  :pitch-seq    '(C5  Bb5 D5  F5  G5)
  ;pitch-seq    '(C5 Bb5)
  :beat-seq     #(2   1   2   1   1   2   1)
)


; not active
(s12 'set :step-dur 384  :vel 0 :delay 80 :pitch-change :all  :transpose 19
  :pitch-seq    '(C5  Bb5 D5  F5  G5  C6  Bb5)
  ;pitch-seq    '(C5 Bb5)
  :beat-seq     #(1  1  2   1   1   2   1   2  1)
)
