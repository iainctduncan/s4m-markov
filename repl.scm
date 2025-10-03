
(define s (markov-seq 's))


(define set-1  (hash-table 1 60  2 62  3 66  4 69))
(define set-1b (hash-table 1 60  2 62  3 66  4 69  5 71))

; reflection around F# of the above
(define set-2  (hash-table 1 72  2 71  3 66  4 63))
(define set-2  (hash-table 1 72  2 71  3 66  4 63  5 61))   

(s 'set :base-dur 40)
(s 'set :base-vel 80)
(s 'set :transpose 0)

(loop for x from 10 downto 1 collect (* x x))

(s1 'set :output-map set-1)
(s1 'set :output-map set-1b)

(s1 'set :output-map set-2)
(s1 'set :output-map set-2b)


(s 'set :state-map (hash-table
    1  (hash-table 1 0   2 1   3 1   4 1   5 1   6 1)   ;7 1   8 1   9 1)
    2  (hash-table 1 1   2 0   3 1   4 1   5 1   6 1)   ;7 1   8 1   9 1)
    3  (hash-table 1 1   2 1   3 0   4 1   5 1   6 1)   ;7 1   8 1   9 1)
    4  (hash-table 1 1   2 1   3 1   4 0   5 1   6 1)   ;7 1   8 1   9 1)
    5  (hash-table 1 1   2 1   3 1   4 1   5 0   6 1)   ;7 1   8 1   9 1)
    6  (hash-table 1 1   2 1   3 1   4 1   5 1   6 0)   ;7 1   8 1   9 1)
    ;7  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1   7 1   8 1   9 1)
    ;8  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1   7 1   8 1   9 1)
    ;9  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1   7 1   8 1   9 1)
    ;10 (hash-table 1 1   2 1   3 1   4 1   5 1   6 1   7 1   8 1   9 1)
  ))

; totally even state map, allowing reps
(s 'set :state-map (hash-table
    1  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1)   
    2  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1)   
    3  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1)   
    4  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1)   
    5  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1)   
    6  (hash-table 1 1   2 1   3 1   4 1   5 1   6 1)   
  ))

; increasing odds of repetitions
(s 'set :state-map (hash-table
    1  (hash-table 1 2   2 1   3 1   4 1   5 1   6 1)   
    2  (hash-table 1 1   2 2   3 1   4 1   5 1   6 1)   
    3  (hash-table 1 1   2 1   3 2   4 1   5 1   6 1)   
    4  (hash-table 1 1   2 1   3 1   4 2   5 1   6 1)   
    5  (hash-table 1 1   2 1   3 1   4 1   5 2   6 1)   
    6  (hash-table 1 1   2 1   3 1   4 1   5 1   6 2)   
  ))

; a totally even state map, but with no repetitions
(s 'set :state-map (hash-table
    1  (hash-table 1 0   2 1   3 1   4 1   5 1   6 1)   
    2  (hash-table 1 1   2 0   3 1   4 1   5 1   6 1)   
    3  (hash-table 1 1   2 1   3 0   4 1   5 1   6 1)   
    4  (hash-table 1 1   2 1   3 1   4 0   5 1   6 1)   
    5  (hash-table 1 1   2 1   3 1   4 1   5 0   6 1)   
    6  (hash-table 1 1   2 1   3 1   4 1   5 1   6 0)   
  ))

; a state map with more holes
(s 'set :state-map (hash-table
    1  (hash-table 1 0   2 1   3 3   4 1   5 0   6 0)   
    2  (hash-table 1 0   2 0   3 1   4 0   5 1   6 1)   
    3  (hash-table 1 1   2 1   3 0   4 1   5 0   6 1)   
    4  (hash-table 1 0   2 4   3 0   4 0   5 0   6 1)   
    5  (hash-table 1 1   2 0   3 1   4 0   5 0   6 1)   
    6  (hash-table 1 0   2 0   3 3   4 0   5 1   6 0)   
  ))

(s 'get :beat-data)

(s1 'start)
(s1 'stop)
(s2 'start)
(s2 'stop)

(s1 'start :vel 0)

(s1 'set :vel 80) 
(s1 'set :vel 0)
(s2 'set :vel 70) 
(s2 'set :vel 0)
(s3 'set :vel 80) 
(s3 'set :vel 0)

(s1 'set :pitch-seq #(60 67 63 70))
(s1 'set :pitch-seq #(60 67 63 70 74 0))

(s1 'set :pitch-seq #(60 67 63 70 74))
(s1 'set :pitch-seq #(60 67 63 70 74 0 60 67 63 70))
(s1 'set :pitch-seq #(60 67 63 70 74 0))
(s1 'set :pitch-seq #(60 67 63 70 74 0 0 0))
(s2 'set :pitch-seq #(77 80 82))
(s2 'set :pitch-seq #(77 80 82 0))
(s3 'set :pitch-seq #(36 34 36))

(s2 'set :step-dur 240)
(s1 'set :pitch-change :every)
(s1 'set :change-prob 1)
(s2 'set :pitch-change :post)
(s2 'set :change-prob 2)

(s1 'set :change-prob 1)
(s1 'set :pitch-change :post)

(s1 'set :pitch-change :every)
(s1 'set :change-prob 3)


(dotimes (i 10) (post i))

(symbol-append 'A (symbol (number->string 1)))
(number->symbol 1)
(number->string 1)
(t1)
(t2)
(t3)
(t4)
(t4n)
(random 1)

(set-mutes #(1 0 1))

(s1 'set :pitch-change :none)
(s1 'set :pitch-change :seq)

(cddr '(1 2))

(define (set . args) 
  "set var in settings hash for keywords, local env otherwise"
  (let* looptop ((arglist args) (k (arglist 0)) (v (arglist 1)))
    (if (keyword? k) (set! ($ k) v) (set! (env k) v))
      (if (> (length arglist) 2)
        (looptop (cddr arglist)))))
          

(s5 'set :pitch-seq '(F#5 G#5 C6 _ Eb5 A5 _ B5) :pitch-change :both)

(random 5)

