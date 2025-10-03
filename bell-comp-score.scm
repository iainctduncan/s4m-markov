

(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
  ; two bars of notes
  :1-1    (s1 'start) 
  :1-1    (s2 'start)
  :5-1    (s6 'start)
  :7-1    (s4 'start)
  :9-1    ((s7 'start)(s9 'start) )
  :13-1   (s3 'start)
  :17-1   (s8 'start)
  :25-1   ((s5 'start))
  :29-1   (s9 'set :pitch-seq '(C6 Bb5 _ _ F5 G5 _ _))


)))  
  

