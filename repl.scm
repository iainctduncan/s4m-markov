(cancel 'foo)

(begin (tune 0.1) (all-gates 1))
(all-gates 0)

(post (gensym) )
(post "hello")


(set-mutes #(0 0 0 0   0 0 0 0   0))

(set-mutes #(1 1 1 1   1 1 1 1   1))

(log (/ 110 55) 2)

(log (/ 2 1) 2)

(s1 'cps-cv 110)
(s1 'cps-cv 165)
(s1 'cps-cv 220)
(s1 'cps-cv 110)
(s1 'set 'gate-obj 'es5-2)

(round (* 127 0.001))
'(0 . 0)
:pitch-seq  '((1) (5/4) (3/2) (2/1))


(s1 'proc-peek)


