
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

(s 'set :output-map set-1)
(s 'set :output-map set-1b)

(s 'set :output-map set-2)
(s 'set :output-map set-2b)


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


(range 0 1)
