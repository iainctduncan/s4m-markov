(post "loading s4m-markov-1.scm")

(load-from-max "s4m-markov-seq.scm")

(define s1 (markov-seq 's  :state 1))

(s1 'set :state-map (hash-table
    '(1 2)  (hash-table 1 0   2 0   3 1   4 0   5 0   6 0)
    '(2 3)  (hash-table 1 0   2 0   3 0   4 4   5 0   6 0)
    '(3 4)  (hash-table 1 1   2 0   3 0   4 0   5 0   6 0)
    1  (hash-table 1 0   2 1   3 3   4 1   5 0   6 0)   
    2  (hash-table 1 0   2 0   3 1   4 0   5 1   6 1)   
    3  (hash-table 1 1   2 1   3 0   4 1   5 0   6 1)   
    4  (hash-table 1 0   2 4   3 0   4 0   5 0   6 1)   
    5  (hash-table 1 1   2 0   3 1   4 0   5 0   6 1)   
    6  (hash-table 1 0   2 0   3 3   4 0   5 1   6 0)   
  ))

(define set-1  (hash-table 1 60  2 62  3 66  4 69))   
(define set-1b (hash-table 1 60  2 62  3 66  4 69  5 71))

; reflection around F# of the above
(define set-2  (hash-table 1 72  2 71  3 66  4 63))   
(define set-2b  (hash-table 1 72  2 71  3 66  4 63  5 61))

(s1 'set :output-map set-1)


(s1 'set :step-dur 8)


(post "ready...")


