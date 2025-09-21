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
(list-head 2 '(1 2 3 4 5))
(list-head 2 '(1))
