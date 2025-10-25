; v4 was the version meant to be played over
; most static opening

(define (start-seqs . seqs)
  (dolist (s seqs) (s 'start)))
(define (stop-seqs . seqs)
  (dolist (s seqs) (s 'stop)))


; trying have more coming in right away
(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
  :1-1    ((start-seqs s1 s2))
  :9-1    ((start-seqs s4))
 )))


