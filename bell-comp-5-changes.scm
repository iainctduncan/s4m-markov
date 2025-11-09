; sketch for chord changes

; good
(define (s1-1)
  (s1 'set :root '(1)   :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2)))
  )
(define (s1-2)
  (s1 'set :root '(7/8)   :pitch-seq '((1) (3/2) (7/6) (4/3) (7/4) (8/7 2) (7/6)))
  )

; good
(define (s2-1) 
  (s2 'set :root '(1)   :pitch-seq '((9/7 7/4 1/2) (2) (7/6) (8/7) (7/4) (4/3) (3/2))))
(define (s2-2) 
  (s2 'set :root '(7/8)   :pitch-seq '((9/7 7/4 1/2) (8/7 2) (4/3) (6/5 2) (7/4) (3/2) (4/3))))


(define (s3-1) 
  ;(s3 'set :root '(1)   :pitch-seq '((7/4 1/2) (7/6) (9/7 7/4) (4/3) (3/2 2/2)    (7/4 1/2) (7/6) (9/7 7/4) (4/3) (2))))
  (s3 'set :root '(1)   :pitch-seq '((7/8) (7/6) (9/7 7/4) (4/3) (3/2 2/2))))
; left off here
(define (s3-2) 
  ;(s3 'set :root '(7/8) :pitch-seq '((7/8) (7/6) (9/7 7/4) (4/3) (3/2 2/2))))
  (s3 'set :root '(7/8) :pitch-seq '((4/3) (7/6) (9/7 7/4) (4/3) (12/7 2/2))))
  ;(s3 'set :root '(7/8) :pitch-seq '((9/7) (7/6) (1) (9/7 7/4) (4/3) )))


(define (s4-1)
  (s4 'set :root '(1)   :pitch-seq '((1/1) (1/2) (7/4) (4/3 1/2) (9/7 7/4))))
(define (s4-2)
  ;(s4 'set :root '(7/8)   :pitch-seq '((9/8) (1/2) (7/4) (3/2 1/2) (9/7 7/4))))
  (s4 'set :root '(7/8)   :pitch-seq '((1) (1/2) (9/4) (3/2 1/2) (9/7 7/4))))

(define (s4-2b)
  (s4 'set :root '(7/8)   :pitch-seq '((1) (1/2) (9/4) (3/2 1/2) (9/7 7/4)
                                       (1) (1/2) (2/1) (3/2 1/2) (9/7 7/4))))

(define (s5-1)
  ; this one works over both c1 and c2
  (s5 'set :root '(1)   :pitch-seq '((3/2) (2/1))))
(define (s5-2)
  ;(s5 'set :root '(1)   :pitch-seq '((4/3) (2/1))))
  (s5 'set :root '(7/8)   :pitch-seq '((4/3) (8/7 2))))

(define (c-1)
  (post "(c-1)")
  (s1-1) (s2-1) (s3-1) (s4-1) (s5-1))

(define (c-2)
  (post "(c-2)")
  (s1-2) (s2-2) (s3-2) (s4-2) (s5-2))

(define (c-2b)
  (post "(c-2b)")
  (s1-2) (s2-2) (s3-2) (s4-2b) (s5-2))  
