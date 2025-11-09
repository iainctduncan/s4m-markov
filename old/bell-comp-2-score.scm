


(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
  ; two bars of notes
  :1-1    (s1 'start :pitch-seq '(D5 F#5 G#5 C6)) 
  :3-1    (s2 'start :pitch-seq '(D5 F#5 G#5 C6))
  :5-1    (s3 'start :pitch-seq '(D5 F#5 G#5 C6))
  :9-1    (s1 'set :pitch-seq '(D5 F#5 G#5 C6 Eb5))
  :13-1   (s3 'set :pitch-seq '(D5 F#5 G#5 C6 Eb5))
  :17-1   (s4 'start :pitch-seq '(D5 F#5 G#5 C6 Eb5 A5))
  :21-1   (s3 'set :pitch-seq '(D5 F#5 G#5 C6 Eb5 A5))
  :25-1   ((s5 'start :pitch-seq '(F#5 G#5 _ C6 Eb5 _))
           (s1 'set  :pitch-seq  '(F#5 G#5 C6 Eb5 A5)))
  :29-1   (s2 'set :pitch-seq '(F#5 G#5 C6 Eb5 A5 B5))
)))
  

