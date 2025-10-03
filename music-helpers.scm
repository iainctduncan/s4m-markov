;(post "loading music helpers.scm")

;;******************************************************************************
;; Utilities - all pure functions, none use state
;; 2025-TODO expand to include all keys including double sharps and flats
(define key->int (hash-table
    :B# 0   :C 0    :C# 1   :Db 1   :D 2    :D# 3   :Eb 3   
    :E 4    :Fb 4   :E# 5   :F 5    :F# 6   :Gb 6   :G 7    
    :G# 8   :Ab 8   :A 9    :Bbb 9  :Bb 10  :A# 10  :B 11  :Cb 11
))

; note, for keys (not pitch class) we only use flats
; 2025-TODO this should not be used anymore, naive
(define int->key (hash-table
    0 :C    1 :Db   2 :D    3 :Eb
    4 :E    5 :F    6 :Gb   7 :G
    8 :Ab   9 :A    10 :Bb  11 :B ))

(define (note-num->key note-num)
  (int->key (modulo note-num 12)))

; convert to a string for display
(define key->str (hash-table
    :C "C"  :Db "Db" :D "D" :Eb "Eb" :E "E" :F "F" 
    :Gb "Gb" :G "G" :Ab "Ab"  :A "A" :Bb "Bb" :B "B" ))

(define key->lowest-note-num (hash-table
    :C 60  :Db 61  :D  62  :Eb 63  :E  64  :F 65  
    :Gb 66 :G  67  :Ab 68  :A  69  :Bb 70  :B 71  ))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 2025 new fbl functions


(define (key-int->note-num key int-val)
  "convert a key kw and integer to a midi note number"
  (let* ((key-base-note-num (+ (* octave 12) (key->int key)))
         (note-num (+ (note :int) key-base-note-num)))
    note-num))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; list of keys, in cycle order, not including enharmonics (flat names only)
(define keys-by-cycle
  (list :C :F :Bb :Eb :Ab :Db :Gb :B :E :A :D :G))

(define key->cycle-index (hash-table
  :C 0  :F 1  :Bb 2 :Eb 3 :Ab 4 :Db 5 :Gb 6 :B 7 :E 8 :A 9 :D 10 :G 11))  

; return the absolute distance between keys, from 0 to 6
(define (key-distance a b)
  (let* ((a-i (key->cycle-index a))
         (b-i (key->cycle-index b))
         (diff (- b-i a-i))
         (dist (cond
                ((> diff 6)  (abs (- 12 diff)))
                ((< diff -5) (abs (+ 12 diff)))
                (else        (abs diff)))))
    dist))

(define solfege->int (hash-table
    :do 0      
    :di 1   :ra 1   
    :re 2   
    :ri 3   :me 3
    :mi 4   :fe 4
    :fa 5  
    :fi 6   :se 6 
    :so 7     
    :si 8   :le 8 
    :la 9   
    :li 10  :te 10
    :ti 11  ))

; wrapper, so we can work before converting everything to degrees from solfege
(define solfege->degree (hash-table
    :do :1  :di :#1  :ra :b2   :re :2   :ri #2   :me :b3   :mi :#3   :fa :4   :fi :#4   
    :se :b5  :so :5  :si :#5   :le :b6  :la :6   :li :#6   :te :b7   :ti :7   )) 

; converts scale degree to an integer offset
(define degree->int (hash-table
    :1  0     :#1 1     :b2 1     :2  2     :#2 3     :b3 3     :3  4     :#3 5     :b4 4     :4 5    
    :#4 6     :b5 6     :5  7     :#5 8     :b6 8     :6  9     :#6 10    :b7 10    :7  11    :#7 12    ))


; 2025-TODO complete this
(define (pitch-int->note-name pitch int-val)
  "convert a pitch and integer to a fully qualified note name"
  (let ((octave (floor (/ int-val 12))))
    (symbol (string-append (symbol->string pitch) (number->string octave)))))


; have not defined Cb, B#, or E# yet (do later just in case)
(define _table_degree->pitch (hash-table
  :C  (hash-table   :1  'C    :#1 'C#   :b2 'Db   :2  'D    :#2 'D#   :b3 'Eb   :3  'E    :#3 'E#   :b4 'Fb   :4 'F   
                    :#4 'F#   :b5 'Gb   :5  'G    :#5 'G#   :b6 'Ab   :6  'A    :#6 'A#   :b7 'Bb   :7  'B    :#7 'B#   )

  :C# (hash-table   :1  'C#   :#1 'C##  :b2 'D    :2  'D#   :#2 'D##  :b3 'E    :3  'E#   :#3 'E##  :b4 'F    :4  'F# 
                    :#4 'F##  :b5 'G    :5  'G#   :#5 'G##  :b6 'A    :6  'A#   :#6 'A##  :b7 'B    :7  'B#   :#7 'B##  )

  :Db (hash-table   :1  'Db   :#1 'D    :b2 'Ebb  :2  'Eb   :#2 'E    :b3 'Fb   :3  'F    :#3 'F#   :b4 'Gbb  :4  'Gb 
                    :#4 'G    :b5 'Abb  :5  'Ab   :#5 'A    :b6 'Bbb  :6  'Bb   :#6 'B    :b7 'Cb   :7  'C    :#7 'C#   )

  :D  (hash-table   :1  'D    :#1 'D#   :b2 'Eb   :2  'E    :#2 'E#   :b3 'F    :3  'F#   :#3 'F##  :b4 'Gb   :4  'G  
                    :#4 'G#   :b5 'Ab   :5  'A    :#5 'A#   :b6 'Bb   :6  'B    :#6 'B#   :b7 'C    :7  'C#   :#7 'C##  )

  :D# (hash-table   :1  'D#   :#1 'D##  :b2 'E    :2  'E#   :#2 'E##  :b3 'F#   :3  'F##  :#3 'F### :b4 'G    :4 'G#     
                    :#4 'G##  :b5 'A    :5  'A#   :#5 'A##  :b6 'B    :6  'B#   :#6 'B##  :b7 'C#   :7  'C##  :#7 'C### )

  :Eb (hash-table   :1  'Eb   :#1 'E    :b2 'Fb   :2  'F    :#2 'F#   :b3 'Gb   :3  'G    :#3 'G#   :b4 'Abb  :4  'Ab 
                    :#4 'A    :b5 'Bbb  :5  'Bb   :#5 'B    :b6 'Cb   :6  'C    :#6 'C#   :b7 'Db   :7  'D    :#7 'D#  )
  
  :E  (hash-table   :1  'E    :#1 'E#   :b2 'F    :2  '#F   :#2 'F##  :b3 'G    :3  'G#   :#3 'G##  :b4 'Ab   :4  'A  
                    :#4 'A#   :b5 'Bb   :5  'B    :#5 'B#   :b6 'C    :6  'C#   :#6 'C##  :b7 'D    :7  'D#   :#7 'D## ) 

  :Fb (hash-table   :1  'Fb   :#1 'F    :b2 'Gbb  :2  'Gb   :#2 'G    :b3 'Abb  :3  'Ab   :#3 'A    :b4 'Bbbb :4  'Bbb
                    :#4 'B    :b5 'Cbb  :5  'Cb   :#5 'C    :b6 'Dbb  :6  'Db   :#6 'D    :b7 'Ebb  :7  'Eb   :#7 'E )  

  :F  (hash-table   :1  'F    :#1 'F#   :b2 'Gb   :2  'G    :#2 'G#   :b3 'Ab   :3  'A    :#3 'A#   :b4 'Bbb  :4  'Bb  
                    :#4 'B    :b5 'Cb   :5  'C    :#5 'C#   :b6 'Db   :6  'D    :#6 'D#   :b7 'Eb   :7  'E    :#7 'E#  )   

  :F# (hash-table   :1  'F#   :#1 'F##  :b2 'G    :2  'G#   :#2 'G##  :b3 'A    :3  'A#   :#3 'A##  :b4 'Bb   :4  'B  
                    :#4 'B#   :b5 'C    :5  'C#   :#5 'C##  :b6 'D    :6  'D#   :#6 'D##  :b7 'E    :7  'E#   :#7 'E## )

  :Gb (hash-table   :1  'Gb   :#1 'G    :b2 'Abb  :2  'Ab   :#2 'A    :b3 'Bbb  :3  'Bb   :#3 'B    :b4 'Cbb  :4  'Cb  
                    :#4 'C    :b5 'Dbb  :5  'Db   :#5 'D    :b6 'Ebb  :6  'Eb   :#6 'E    :b7 'Fb   :7  'F    :#7 'F# )  

  :G  (hash-table   :1  'G    :#1 'G#   :b2 'Ab   :2  'A    :#2 'A#   :b3 'Bb   :3  'B    :#3 'B#   :b4 'Cb   :4  'C  
                    :#4 'C#   :b5 'Db   :5  'D    :#5 'D#   :b6 'Eb   :6  'E    :#6 'E#   :b7 'F    :7  'F#   :#7 'F## )
  
  :G# (hash-table   :1  'G#   :#1 'G##  :b2 'A    :2  'A#   :#2 'A##  :b3 'B    :3  'B#   :#3 'B##  :b4 'C    :4  'C# 
                    :#4 'C##  :b5 'D    :5  'D#   :#5 'D##  :b6 'E    :6  'E#   :#6 'E##  :b7 'F#   :7  'F##  :#7 'F### )
  
  :Ab (hash-table   :1  'Ab   :#1 'A    :b2 'Bbb  :2  'Bb   :#2 'B    :b3 'Cb   :3  'C    :#3 'C#   :b4 'Dbb  :4  'Db 
                    :#4 'D    :b5 'Ebb  :5  'Eb   :#5 'E    :b6 'Fb   :6  'F    :#6 'F#   :b7 'Gb   :7  'G    :#7 'G# )
  
  :A  (hash-table   :1  'A    :#1 'A#   :b2 'Bb   :2  'B    :#2 'B#   :b3 'C    :3  'C#   :#3 'C##  :b4 'Db   :4  'D  
                    :#4 'D#   :b5 'Eb   :5  'E    :#5 'E#   :b6 'F    :6  'F#   :#6 'F##  :b7 'G    :7  'G#   :#7 'G## )

  :A#  (hash-table  :1  'A#   :#1 'A##  :b2 'B    :2  'B#   :#2 'B##  :b3 'C#   :3  'C##  :#3 'C### :b4 'D    :4  'D# 
                    :#4 'D##  :b5 'E    :5  'E#   :#5 'E##  :b6 'F#   :6  'F##  :#6 'F### :b7 'G#   :7  'G##  :#7 'G### )

  :Bb (hash-table   :1  'Bb   :#1 'B    :b2 'Cb   :2  'C    :#2 'C#   :b3 'Db   :3  'D    :#3 'D#   :b4 'Ebb  :4 'Eb  
                    :#4 'E    :b5 'Fb   :5  'F    :#5 'F#   :b6 'Gb   :6  'G    :#6 'G#   :b7 'Ab   :7  'A    :#7 'A# ) 

  :B  (hash-table   :1  'B    :#1 'B#   :b2 'C    :2  'C#   :#2 'C##  :b3 'D    :3  'D#   :#3 'D##  :b4 'Eb   :4  'E  
                    :#4 'E#   :b5 'F    :5  'F#   :#5 'F##  :b6 'G    :6  'G#   :#6 'G##  :b7 'A    :7  'A#   :#7 'A## )
  ; do I need B#? and Cb?
  ))  
 
; convert letter name to an integer offset (assumes C is 0)
; for going from letter notation to integer/midi values
; handles double sharps and flats
(define pitch-class->int (hash-table
  'C 0    'B# 0   'Dbb 0   
  'C# 1   'Db 1   'B## 1 
  'D 2    'C## 2  'Ebb 2
  'Eb 3   'D# 3   'Fbb 3
  'E 4    'D## 4  'Fb 4
  'F 5    'E# 5   'Gbb 4
  'F# 6   'Gb 6   'E## 6
  'G 7    'F## 7  'Abb 7
  'Ab 8   'G# 8    
  'A 9    'G## 9  'Bbb 9
  'Bb 10  'A# 10  'Cbb 10
  'B 11   'A## 11 'Cb 11
))


; populate a table for note symbol names to note-num
; usage: (note-sym->note-num 'C#4)
(define note-sym->note-num (hash-table))
(for-each
  (lambda (p)
    (let* ((pitch-class (car p)) (pitch-int (cdr p)))
      (set! (note-sym->note-num '_) #f)
      (dotimes (i 12) 
        (let* ((oct-offset (* 12 i))
               (note-num (+ oct-offset pitch-int))
               (note-sym (symbol-append pitch-class (symbol (number->string i)))))
          (set! (note-sym->note-num note-sym) note-num)))))
  pitch-class->int)


(define (degree->pitch key degree) 
  (let ((key-hash (_table_degree->pitch key)))
    (if (not key-hash)
      (error 'key-error (format #f "key not defined ~a" key)))
    (let ((pitch (key-hash degree)))
      (if (not pitch)
        (error 'key-error (format #f "degree not found ~a" degree)))
      pitch)))  


(define int->solfege (hash-table
    0 :do    1 :ra   2 :re    3 :me 
    4 :mi    5 :fa   6 :fi    7 :so      
    8 :le    9 :la   10 :te   11 :ti ))

(define interval->int (hash-table
    :a-min-2 1   
    :a-maj-2 2
    :a-min-3 3
    :a-maj-3 4
    :a-prf-4 5
    :a-dim-5 6
    :a-prf-5 7
    :a-min-6 8
    :a-maj-6 9
    :a-min-7 10
    :a-maj-7 11
    :a-prf-8 12
    :d-min-2 -1
    :d-maj-2 -2
    :d-min-3 -3
    :d-maj-3 -4
    :d-prf-4 -5
    :d-dim-5 -6
    :d-prf-5 -7
    :d-min-6 -8
    :d-maj-6 -9
    :d-min-7 -10
    :d-maj-7 -11
    :d-prf-8 -12
))

(define interval->interval-size (hash-table
    :a-min-2 :min-2   :a-maj-2 :maj-2   :a-min-3 :min-3   :a-maj-3 :maj-3   :a-prf-4 :prf-4   :a-dim-5 :dim-5 
    :a-prf-5 :prf-5   :a-min-6 :min-6   :a-maj-6 :maj-6   :a-min-7 :min-7   :a-maj-7 :maj-7   :a-prf-8 :prf-8 
    :d-min-2 :min-2   :d-maj-2 :maj-2   :d-min-3 :min-3   :d-maj-3 :maj-3   :d-prf-4 :prf-4   :d-dim-5 :dim-5 
    :d-prf-5 :prf-5   :d-min-6 :min-6   :d-maj-6 :maj-6   :d-min-7 :min-7   :d-maj-7 :maj-7   :d-prf-8 :prf-8 
))

(define interval-size->steps (hash-table
    :min-2 1  :maj-2 2  :min-3 3  :maj-3 4    :prf-4 5    :dim-5 6 
    :prf-5 7  :min-6 8  :maj-6 9  :min-7 10   :maj-7 11   :prf-8 12
))

; for interval filters, treats 0 as a prf8 so we can do modulo 12 functions
(define steps->interval-size (hash-table
    1 :min-2  2 :maj-2  3 :min-3  4  :maj-3    5 :prf-4    6 :dim-5 
    7 :prf-5  8 :min-6  9 :maj-6  10 :min-7   11 :maj-7   12 :prf-8  0 :prf-8
))


(define interval->string (hash-table
    :a-min-2 "Ascending Minor 2nd"    :a-maj-2 "Ascending Major 2nd"    :a-min-3 "Ascending Minor 3rd"
    :a-maj-3 "Ascending Major 3rd"    :a-prf-4 "Ascending Perfect 4th"  :a-dim-5 "Ascending Diminished 5th"
    :a-prf-5 "Ascending Perfect 5th"  :a-min-6 "Ascending Minor 6"      :a-maj-6 "Ascending Major 6"
    :a-min-7 "Ascending Minor 7"      :a-maj-7 "Ascending Major 7"      :a-prf-8 "Ascending Perfect Octave"
    :d-min-2 "Descending Minor 2nd"   :d-maj-2 "Descending Major 2nd"   :d-min-3 "Descending Minor 3rd"
    :d-maj-3 "Descending Major 3rd"   :d-prf-4 "Descending Perfect 4th" :d-dim-5 "Descending Diminished 5th"
    :d-prf-5 "Descending Perfect 5th" :d-min-6 "Descending Minor 6th"   :d-maj-6 "Descending Major 6th"
    :d-min-7 "Descending Minor 7th"   :d-maj-7 "Descending Major 7th"   :d-prf-8 "Descending Percect Octave"
))

; return steps from lowest note
(define triad->steps (hash-table
    :maj-root '(0 4 7)
    :maj-1st  '(0 3 8)
    :maj-2nd  '(0 5 9)
    :min-root '(0 3 7)
    :min-1st  '(0 4 9)
    :min-2nd  '(0 5 8)
    :aug      '(0 4 8)
    :dim-root '(0 3 6)
    :dim-1st  '(0 3 9)
    :dim-2nd  '(0 6 9)
    :sus-root '(0 5 7)
    :sus-1st  '(0 2 7)
    :sus-2nd  '(0 5 10)
))    

(define triad->string (hash-table
    :maj-root "Major, root position" 
    :maj-1st  "Major, 1st inversion"
    :maj-2nd  "Major, 2nd inversion"
    :min-root "Minor, root position"
    :min-1st  "Minor, 1st inversion"
    :min-2nd  "Minor, 2nd inversion"
    :aug      "Augmented"
    :dim-root "Diminished, root position"
    :dim-1st  "Diminished, 1st inversion" 
    :dim-2nd  "Diminished, 2nd inversion"
    :sus-root "Suspended, root position"
    :sus-1st  "Suspended, 1st inversion"
    :sus-2nd  "Suspended, 2nd inversion"
))    

(define quatrad->steps (hash-table
  :maj-6       '(0 4 7 9 )
  :maj-7       '(0 4 7 11)
  :maj-7-#11   '(0 4 6 11)
  :maj-7-#5    '(0 4 8 11)
  :min-6       '(0 3 7 9 )
  :min-7       '(0 3 7 10)  
  :min-maj-7   '(0 3 7 11)
  :min-7-b5    '(0 3 6 10)
  :dom-7       '(0 4 7 10)
  :dom-7-#11   '(0 4 6 10)
  :dom-7-b13   '(0 4 8 10)
  :sus-7       '(0 5 7 10) 
  :dim-7       '(0 3 6 9 )
  :dim-maj-7   '(0 3 6 11)
  ))

(define quatrad->string (hash-table
  :maj-6       "Maj 6"
  :maj-7       "Maj 7"
  :maj-7-#11   "Maj 7-#11"
  :maj-7-#5    "Maj 7-#5"
  :min-6       "Min 6"
  :min-7       "Min 7"
  :min-maj-7   "Min maj-7"
  :min-7-b5    "Min 7-b5"
  :dom-7       "Dom 7"
  :dom-7-#11   "Dom 7-#11"
  :dom-7-b13   "Dom 7-b13"
  :sus-7       "Sus 7"
  :dim-7       "Dim 7"
  :dim-maj-7   "Dim maj-7"
  ))

; double check these later
(define 9th-chord->steps (hash-table
  :maj-6-9       '(0 4 7 9  14)
  :maj-9         '(0 4 7 11 14)
  :maj-9-#11     '(0 4 6 11 14)
  :maj-9-#5      '(0 4 8 11 14)
  
  :min-6-9       '(0 3 7 9  14)
  :min-9         '(0 3 7 10 14)  
  :min-9-maj-7   '(0 3 7 11 14)

  :dom-9         '(0 4 7 10 14)
  :dom-7-b9      '(0 4 7 10 13)
  :dom-7-#9      '(0 4 7 10 15)
  :dom-7-b9-b13  '(0 4 8 10 13)
  :dom-7-#9-b13  '(0 4 8 10 15)
  :dom-9-#11     '(0 4 7 10 14)
  :sus-9         '(0 5 7 10 14) 
  
  :min-7-b5-11   '(0 5 6 10 12)
  :min-7-b5-b9   '(0 3 6 10 13)
  :min-7-b5-9    '(0 3 6 10 14)
  
  :dim-7-9       '(0 3 6 9  14) 
  :dim-7-b9      '(0 3 6 9  13)
  :dim-maj-7-9   '(0 3 6 11 14)
  ))

(define 9th-chord->string (hash-table
  :maj-6-9       "Maj 6-9"
  :maj-9         "Maj 9"
  :maj-9-#11     "Maj 9-#11"
  :maj-9-#5      "Maj 9-#5"
  
  :min-6-9       "Min 6-9"
  :min-9         "Min 9"
  :min-9-maj-7   "Min maj 9"
  
  :dom-9         "Dom 9"
  :dom-7-b9      "Dom 7-b9"
  :dom-7-#9      "Dom 7-#9"
  :dom-7-b9-b13  "Dom 7-b9-b13"
  :dom-7-#9-b13  "Dom 7-#9-b13"
  :dom-9-#11     "Dom 9-#11"
  :sus-9         "Sus 9"

  :min-7-b5-11   "Min 7-b5-11"
  :min-7-b5-b9   "Min 7-b5-b9"
  :min-7-b5-9    "Min 7-b5-add 9"

  :dim-7-9       "Dim 7 add 9"
  :dim-7-b9      "Dim 7 add b9"
  :dim-maj-7-9   "Dim maj 7 add 9"
  ))


(define (ascending? interval)
  (> (interval->int interval) 0))

;TODO modulate a key by the cycle
(define (mod-by-cycle curr-key offset) #f) 

;; return quarter notes to ms, protect against tempo being set to 0
(define (beats->ms beats tempo)
  (let* ((tempo-flt (exact->inexact tempo))
        (tempo-safe (if (= 0.0 tempo-flt) 0.01 tempo-flt)) 
        (beats-flt (exact->inexact beats)))
    (* (/ 60 tempo-safe) beats-flt 1000)))


; RENAMED, was midi-note
(define (pitch->midi-note pitch key octave)
  "return midi note number for a given solfege pitch, key, and octave"
  (let* ((octave-offset (* 12 octave))
         (key-offset (key->int key))
         (pitch-offset (solfege->int pitch)))
   (+ octave-offset key-offset pitch-offset)))

(define (int->midi-note note-int key octave)
  "return midi note number for a given integer, key, and octave"
  (let* ((octave-offset (* 12 octave))
         (key-offset (key->int key))
         (pitch-offset note-int))
   (+ octave-offset key-offset pitch-offset)))

(define (random-choice sequence)
  (sequence (random (length sequence))))

(define (note-nums->voicing note-nums)
  "return a voicing as list of steps from lowest note from a list of notenums"
  (let* ((notes  (sort! note-nums <))
         (lowest (notes 0)))
    (map (lambda(n)(- n lowest)) notes)))

; matcher that will work for two or up chords
(define (chords-match? a-notes q-notes)
  "return whether two unordered lists of note numes are matched chords and voicings, disregarding octave"
  (let* ((q-sorted (sort! q-notes <))
         (a-sorted (sort! a-notes <))
         (q-key    (int->key (modulo (q-sorted 0) 12)))
         (a-key    (int->key (modulo (a-sorted 0) 12)))
         (q-voicing (note-nums->voicing q-notes))
         (a-voicing (note-nums->voicing a-notes)))
    ; chords match if the voicing is the same and key of lowest note is the same
    (and (equal? q-voicing a-voicing) (eq? q-key a-key))))

(define (note-in-chord? a-note chord-notes)
  "return whether a note is in the a chord, ignoring octaves"
  (post "(note-in-chord?)" a-note chord-notes)
  (let* ((chord-lowered  (map (lambda (n)(modulo n 12)) chord-notes))
          (a-note-lowered (modulo a-note 12)))
    (post (member? a-note-lowered chord-lowered))
    (if (member? a-note-lowered chord-lowered) #t #f)))



