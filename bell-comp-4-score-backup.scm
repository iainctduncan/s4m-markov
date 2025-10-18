
(define (start-seqs . seqs)
  (dolist (s seqs) (s 'start)))
(define (stop-seqs . seqs)
  (dolist (s seqs) (s 'stop)))


; trying have more coming in right away
(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
  :1-1    ((start-seqs s1 s2 s3))
  :5-1    ((start-seqs s6))
  :8-3    (set-mutes #(0 0 0 0 0 0 0 0))
  ; todo unmute on last triplet
  :9-1    ((set-mutes #(1 1 1 1 1 1 1 1))
           (start-seqs s5)
           (s1 'p '(C5 Bb5 D5 G5))
           (s2 'p '(C5 Bb5 D5 G5))
           (s4 'p '(D5 G5 F5))
           (s7 'start) 
           (s9 'start :pitch-seq '(_  Bb5 G5 _ _ ))
           ) 
  ; move all this 4 later
  :16-3   ((s9 'set :pitch-seq '(C5  Bb5 G5 _ _ )))
          ; cut out 3 and 4 for the first solo
  :17-1   ((s8 'start))        
  :25-1   ((post "synth solo starts, 3 & 5 drop out") 
           (set-mutes #(1 1 0 1  0 1 1 1 1))
           )
  ; should be 41-1, moving while writing
  :41-1   ((set-mutes #(1 1 1 0 0 1 1 1 1))
           (s3 'p '(_ _ D5 F5 G5 _ _ _ D5 F5 G5 C5 ))
           ;(s7 'p '(A5 G5 _))
           (s8 'p '(C6 Bb5 _ _ D6 G5 _ _ C6 Bb5 D6 _ G5 _ Bb5 _ ))
           )
  ; good to here, Oct 4th 
 
  ; soloist prepares the Db
  ; these should actually be later for the solist
  :53-1  (trans-1)
  :61-1  (trans-2)
  :69-1  (trans-3)
  :77-1  (trans-4)
  :85-1  (trans-5)

)))


(define (trans-1)
  (post "trans-1")
  (set-mutes #(1 0 1 0  1 1 1 0 1))
  (s1   'p '(C5 Bb5 Db5))
  ;m(s2 'p '(C5 Bb5 D5 G5))
  (s3   'p '(_ _ D5 F5 G5 _ _ _ D5 F5 G5 C5 ))
  ;m(s4 'p '(D5 G5 F5))
  ;(s5  'p '(D5 F5 _ G5 C5 _))    ; no change
  ;(s6  'p '(G4 Bb4  _ _ D5 C5))  ; no change
  ;(s7  'p '(A5 G5 _ _ _ _))     ; no change
  ;m(s8 'p '(C6 Bb5 _ _))        ; M new
  (s9   'p '(C5 Bb5 _ _ _ ))
)

(define (trans-2)
  (post "trans-2")
  (set-mutes #(1 0 1 0 1 1 1 1 1))  ; opening 8 
  ;(s1   'p '(C5 Bb5 Db5))        ; no change
  ;m(s2 'p '(C5 Bb5 D5 G5))     
  (s3   'p '(_ _ D5 F5 G5 _ _ _ D5 F5 G5 C5 ))
  ;m(s4 'p '(D5 G5 F5))
  (s5   'p '(A5 Bb5 _ Db6 C6 _))  ; new
  (s6   'p '(G4 Bb4  _ _ E5 C5))  ; new
  (s7   'p '(A5 G5 _ _ _ _))     ; no change
  (s8   'p '(C6 Bb5 _ _))        ; M new
  (s9   'p '(C5 Bb5 _ _ _ ))
)

(define (trans-3)
  (post "trans-3")
  (set-mutes #(1 0 1 0 1 1 1 1 1))  ; no change
  ;(s1   'p '(C5 Bb5 Db5))        ; no change
  ;m(s2 'p '(C5 Bb5 D5 G5))     
  ;(s3   'p '(_ _ D5 F5 G5 _ _ _ D5 F5 G5 C5 ))
  ;m(s4 'p '(D5 G5 F5))
  ;(s5 'p '(A5 Bb5 _ Db6 C6 _))
  (s6 'p '(G4 Bb4  _ _ F5 E5))      ; change to F E from E C
  (s7 'p '(Db5 Bb4 _))              ; change
  (s8 'p '(C6 Bb5 _ _ Db6 C6 _ _))  ; change
  (s9 'p '(_ Bb5 C5 _ _ ))          ; change
)

(define (trans-4)
  (post "trans-4, Ab in s1")
  (set-mutes #(1 1 0 0 1 1 1 1 1))
  (s1 'p '(Ab5 Bb5 Db5))
  (s2 'p '(C5 Bb5 Db5 G5))     
  ;m(s3   'p '(_ _ D5 F5 G5 _ _ _ D5 F5 G5 C5 ))
  ;m(s4 'p '(D5 G5 F5))
  (s5 'p '(Ab5 Bb5 _ Db6 C6 _)) ; new Ab
  (s6 'p '(G4 Bb4  _ _ F5 E5))
  ;(s7 'p '(Db5 Bb4 _))
  ;(s8 'p '(C6 Bb5 _ _ Db6 C6 _ _))
  (s9 'p '(_ F5 C5 _ _  _ Bb5 C5 _ _ ))   ; new
)

(define (trans-5)
  (post "trans-5")
  ;(set-mutes #(1 1 0 0 1 1 1 1 1))
  ;(s1 'p '(Ab5 Bb5 Db5))
  ;(s2 'p '(C5 Bb5 Db5 G5))     
  ;m(s3   'p '(_ _ D5 F5 G5 _ _ _ D5 F5 G5 C5 ))
  ;m(s4 'p '(D5 G5 F5))
  ;(s5 'p '(Ab5 Bb5 _ Db6 C6 _)) ; new Ab
  ;(s6 'p '(G4 Bb4  _ _ F5 E5))
  ;(s7 'p '(Db5 Bb4 _))
  ;(s8 'p '(C6 Bb5 _ _ Db6 C6 _ _))
  (s9 'p '(E5 F5 C5 _ _  _ F5 C5 _ _ ))   ; new
)
