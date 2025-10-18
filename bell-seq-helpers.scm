; new helper functions

(define (filter-hash-table fun ht)
  "filter a hash-table by testing key val pairs with a predicate"
  (define new-ht (hash-table))
  (for-each 
    (lambda (pair)
      (let ((key (car pair)) 
            (val (cdr pair)))
        (if (fun key val)
          (set! (new-ht key) val))))
    ht)
  new-ht)
; test:
; (filter-hash-table (lambda (k v)(if v v #f)) (hash-table :a 1 :b #f :c 2))


(define (list-head count source-list)
  "return a list of the first count items in source-list"
  (let looptop ((i count) (s source-list) (l '()))
    (if (> i 0)
      (looptop 
        (- i 1) 
        (if (> (length s) 0) (cdr s) s) 
        (if (> (length s) 0) (append l (list (car s))) l))
      l)))

; test
;(list-head 2 '(1 2 3 4 5))
;(list-head 2 '(1))
; a reset function that will zero out the transport and metro
; and reset the s4m interpreter

(define (s4m-reset)
  (post "s4m-reset")
(send 'transport 0)
  (send 'locate 0)
  (send 'metro 0)
  (delay 100 (lambda() (send 's4m-reset 'bang))))

(define (set-mutes mute-vector)
  (let ((seq-names '(s1 s2 s3 s4 s5 s6 s7 s8)))
    (loop for i to (- (length mute-vector) 1) do
      (begin
        ;(post "i:" i "seq-names:i" (seq-names i))
        (let ((seq (eval (seq-names i)))
              (state (mute-vector i)))
          (seq 'set :unmuted state))))))

(define (set-attrs kw val-vector)
  (let ((seq-names '(s1 s2 s3 s4 s5 s6 s7 s8 )))
    (loop for i to (- (length val-vector) 1) do
      (begin
        ;(post "i:" i "seq-names:i" (seq-names i))
        (let ((seq (eval (seq-names i)))
              (state (val-vector i)))
          (seq 'set kw state))))))



