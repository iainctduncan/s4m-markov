(begin (tune 0.1) (all-gates 1))
(all-gates 0)

(post "hello")


(s1 'add-process (lambda ($ %) 
  (set! ($ :amp-seq 0) (+ ($ :amp-seq 0) .1))
  (post "amp now:" ($ :amp-seq 0)))
  (hash-table :until (lambda($) (>= ($ :amp-seq 0) 10))))

(out 2 '(7 110 0.5 120))
