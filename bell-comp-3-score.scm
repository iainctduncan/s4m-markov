

; decent version, but slow build
;(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
;  ; two bars of notes
;  :1-1    ((s1 'start))
;  :4-3    ((s3 'start)) ; good to here
;  :12-1   ((s5 'start))
;  :20-1   ((s2 'start))
;  :21-1   ((s1 'set :pitch-seq '(C5  Bb5 D5  G5  G5  C6  Bb5))) ; ??
;  :29-1   ((s8 'start) 
;            (s5 'set :pitch-seq '(D5 F5 _ G5 C5 G4))) 
;  :33-1   ((s9 'start))
;  :38-1   ((s7 'start)) ; too long a gap of change around here 
;  :49-1   ((s9 'set :pitch-seq '(_  Bb5 G5 _ _ ))
;           ;(post "stopping s3") 
;           ;(s3 'stop) 
;           (s6 'start))
;  :53-1    ((s4 'start))
;  :57-1    ((s9 'set :pitch-seq '(C5  Bb5 G5 _ _ )))
;)))
 
; more dense version not sure if it's better
;(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
;  ; two bars of notes
;  :1-1    ((s1 'start))
;  :3-1    ((s2 'start))
;  :4-3    ((s3 'start)) ; good to here
;  :12-1   ((s5 'start))
;  :20-3   ((s6 'start))
;  :29-1   ((s8 'start) ; not sure about s8 pitches
;            (s5 'set :pitch-seq '(D5 F5 _ G5 C5 G4))) 
;  ;:37-1   ((s7 'start)) ; not sure about this tone 
;  :33-1   ((s9 'start))
;  :37-1   ((s9 'set :pitch-seq '(_  Bb5 G5 _ _ )))
;  :41-1   ((s7 'start))
;  :45-1   ((s4 'start) (s9 'set :pitch-seq '(C5  Bb5 G5 _ _ )))
;  :49-1   ((s9 'set :pitch-seq '(C5  Bb5 _  D5 Bb4)))
;)))

; trying have more coming in right away
(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
  ; two bars of notes
  :1-1    ((s1 'start))
  :4-3    ((s3 'start)) ; good to here
  :12-1   ((s5 'start))
  :20-1   ((s2 'start))
  :21-1   ((s1 'set :pitch-seq '(C5  Bb5 D5  G5  G5  C6  Bb5))) ; ??
  :29-1   ((s8 'start) 
            (s5 'set :pitch-seq '(D5 F5 _ G5 C5 G4))) 
  :33-1   ((s9 'start))
  :38-1   ((s7 'start)) ; too long a gap of change around here 
  :49-1   ((s9 'set :pitch-seq '(_  Bb5 G5 _ _ ))
           ;(post "stopping s3") 
           ;(s3 'stop) 
           (s6 'start))
  :53-1    ((s4 'start))
  :57-1    ((s9 'set :pitch-seq '(C5  Bb5 G5 _ _ )))
)))
