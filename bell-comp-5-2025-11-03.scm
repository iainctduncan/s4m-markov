; v4 was the version meant to be played over
; most static opening

(define (start-seqs . seqs)
  (delay 1 (lambda ()
    (dolist (s seqs) (s 'start)))))
;
(define (stop-seqs . seqs)
  (dolist (s seqs) (s 'stop)))

(define (set-roots root)
  (dolist (s (list s1 s2 s3 s4 s5 s6 s7 s8)) (s 'set :root root)))

;(s1 'set :root '(1) :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2)))
; (s2 'set :pitch-seq    '((9/8) (2) (7/6) (8/7) (7/4) (4/3) (3/2))  ; same seq as s2 but order juggled and oct raised
;(s7 'set :root '(1) :pitch-seq  '((1) (7/6) (7/4) (3/2)  (1) (7/6) (8/7) (4/3))
;(s8  :pitch-seq    '((1) (7/6) (4/3) (7/4) (3/2))

; maybe come back to this
;:4-1    (set-roots '(7/4 1/2))        
;:7-1    (set-roots '(1))        
;:10-1   (set-roots '(8/7))        
;:12-1   (set-roots '(4/3))        
;:13-1   (set-roots '(1))

; Next: stretch it out more, changes in slower
(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
  :1-1    ((start-seqs s1 s2 s3 s4 s5 s6 s7 s8)
           (set-mutes #(1 1 0 1 0 0 0 0)))
  ;:1-1    ((start-seqs s4 s5))
  :1-1    ((post "1:1")
           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
              :change-seq '(0  1  0  0  1  0  1)  
              :pitch-seq '((1) (4/3) (8/7))) 
           (s2 'set :root '(1) :base-ratio 1/1      
              :pitch-seq '((2) (7/6)))
           (s4 'set :root '(1) :base-ratio 1/1    ;  
              :amp-seq      '(3   0   0   0   0) 
              :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 0)
           (s8 'set :root '(1) :base-ratio 1/1  :unmuted 0)
          )
  :9-1    ((post "5-1 s2 to 3, extra bass")
           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
              :change-seq '(0  1  0  0  1  0  1)  
              :pitch-seq '((1) (4/3) (8/7))) 
           (s2 'set :root '(1) :base-ratio 1/1      ;2
              :pitch-seq '((9/8) (2) (7/6)))
           (s4 'set :root '(1) :base-ratio 1/1    ;  
              :amp-seq      '(3   0   0   2   0) 
              :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
          )
  :17-1    ((post "9-1 s1 to 4 ") 
           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
              :change-seq '(0  1  0  1  1  0  1)  
              :pitch-seq '((1) (4/3) (8/7) (7/6))) 
           (s2 'set :root '(1) :base-ratio 1/1      ;2
              :pitch-seq '((9/8) (2) (7/6)))
           (s4 'set :root '(1) :base-ratio 1/1    ;  
              :amp-seq      '(3   0   1   2   0) 
              :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
              :pitch-seq  '((7/4) (3/2)))
           (s8 'set :root '(1) :base-ratio 1/1  :unmuted 0
              :pitch-seq    '((4/3)))               ;1  
          )

  ; am here        
  :25-1   ((post "25-1 s2 to 4") 
           ;(s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
           ;   :change-seq '(1  1  0  1  1  0  1)  
           ;   :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4)) 
           ;   ;:pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
           (s2 'set :root '(1) :base-ratio 1/1      
              :pitch-seq '((9/8) (2) (7/6) (8/7)))
           ;(s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
           ;   :pitch-seq    '((4/3)))               ;1  
          )
  :33-1  ((post "17 s1 to 5, s7 to 3 ")
           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
              :change-seq '(1  1  0  1  1  0  1)  
              ;:pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
              :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4)))
           ;(s4 'set :root '(1) :base-ratio 1/1    ;  
           ;   :amp-seq      '(3   0   1   2   1) 
           ;   :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
              :pitch-seq  '((7/4) (3/2) (1)))
          )
  :41-1  ((post "21 s2 to 5")
           (s2 'set :root '(1) :base-ratio 1/1      
              :pitch-seq '((9/8) (2) (7/6) (8/7) (7/4)))
          )
  :49-1  ((post "25 s1 to 6, s8 in")
           (s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
              :pitch-seq  '((7/6) (4/3)))
         )               
  :57-1  ((post "29 s1 to 6, s7 to 4")
           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
              :change-seq '(1  1  1  1  1  0  1)  
              ;:pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
              :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/8)))
           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
              :pitch-seq  '((7/4) (3/2) (2) (7/6)))
          )
  :65-1  ((post "33 s2 to 6, s8 to 3")
          ;(s3 'set :unmuted 1)
          (s2 'set :root '(1) :base-ratio 1/1      
              :pitch-seq '((9/8) (2) (7/6) (8/7) (7/4) (4/3)))
          (s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
              :pitch-seq  '((7/6) (4/3) (7/4)))
         )
  :73-1  ((post "37, s1 to 7, s7 to 5")
           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :all
              :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2)))
           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
              :pitch-seq  '((7/4) (3/2) (2) (7/6) (8/7)))
         )
  :81-1 ((post "41 (last), s3 in, s8 to 4")
          (s3 'set :unmuted 1)
          (s2 'set :root '(1) :base-ratio 1/1      
              :pitch-seq '((9/8) (2) (7/6 2/1) (8/7) (7/4)))
          (s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
              :pitch-seq  '((7/6) (4/3) (7/4) (3/2)))
        )
          

; Next: stretch it out more, changes in slower
;(define score (make-score (hash-table :bbt '(8 4 480) :res 2 :name "Bell Score-1") `(
;  :1-1    ((start-seqs s1 s2 s3 s4 s5 s6 s7 s8)
;           (set-mutes #(1 1 0 1 0 0 0 0)))
;  ;:1-1    ((start-seqs s4 s5))
;  :1-1    ((post "1:1")
;           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
;              :change-seq '(0  1  0  0  1  0  1)  
;              :pitch-seq '((1) (4/3) (8/7))) 
;           (s2 'set :root '(1) :base-ratio 1/1      
;              :pitch-seq '((2) (7/6)))
;           (s4 'set :root '(1) :base-ratio 1/1    ;  
;              :amp-seq      '(3   0   0   0   0) 
;              :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
;           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 0)
;           (s8 'set :root '(1) :base-ratio 1/1  :unmuted 0)
;          )
;  :5-1    ((post "5-1 s2 to 3, extra bass")
;           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
;              :change-seq '(0  1  0  0  1  0  1)  
;              :pitch-seq '((1) (4/3) (8/7))) 
;           (s2 'set :root '(1) :base-ratio 1/1      ;2
;              :pitch-seq '((9/8) (2) (7/6)))
;           (s4 'set :root '(1) :base-ratio 1/1    ;  
;              :amp-seq      '(3   0   0   2   0) 
;              :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
;          )
;  :9-1    ((post "9-1 s1 to 4 ") 
;           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
;              :change-seq '(0  1  0  1  1  0  1)  
;              :pitch-seq '((1) (4/3) (8/7) (7/6))) 
;           (s2 'set :root '(1) :base-ratio 1/1      ;2
;              :pitch-seq '((9/8) (2) (7/6)))
;           (s4 'set :root '(1) :base-ratio 1/1    ;  
;              :amp-seq      '(3   0   1   2   0) 
;              :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
;           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
;              :pitch-seq  '((7/4) (3/2)))
;           (s8 'set :root '(1) :base-ratio 1/1  :unmuted 0
;              :pitch-seq    '((4/3)))               ;1  
;          )
;  :13-1   ((post "13-1 s2 to 4") 
;           ;(s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
;           ;   :change-seq '(1  1  0  1  1  0  1)  
;           ;   :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4)) 
;           ;   ;:pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
;           (s2 'set :root '(1) :base-ratio 1/1      
;              :pitch-seq '((9/8) (2) (7/6) (8/7)))
;           ;(s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
;           ;   :pitch-seq    '((4/3)))               ;1  
;          )
;  :17-1  ((post "17 s1 to 5, s7 to 3 ")
;           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
;              :change-seq '(1  1  0  1  1  0  1)  
;              ;:pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
;              :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4)))
;           ;(s4 'set :root '(1) :base-ratio 1/1    ;  
;           ;   :amp-seq      '(3   0   1   2   1) 
;           ;   :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
;           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
;              :pitch-seq  '((7/4) (3/2) (1)))
;          )
;  :21-1  ((post "21 s2 to 5")
;           (s2 'set :root '(1) :base-ratio 1/1      
;              :pitch-seq '((9/8) (2) (7/6) (8/7) (7/4)))
;          )
;  :25-1  ((post "25 s1 to 6, s8 in")
;           (s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
;              :pitch-seq  '((7/6) (4/3)))
;         )               
;  :29-1  ((post "29 s1 to 6, s7 to 4")
;           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :seq
;              :change-seq '(1  1  1  1  1  0  1)  
;              ;:pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
;              :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/8)))
;           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
;              :pitch-seq  '((7/4) (3/2) (2) (7/6)))
;          )
;  :33-1  ((post "33 s2 to 6, s8 to 3")
;          ;(s3 'set :unmuted 1)
;          (s2 'set :root '(1) :base-ratio 1/1      
;              :pitch-seq '((9/8) (2) (7/6) (8/7) (7/4) (4/3)))
;          (s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
;              :pitch-seq  '((7/6) (4/3) (7/4)))
;         )
;  :37-1  ((post "37, s1 to 7, s7 to 5")
;           (s1 'set :root '(1) :base-ratio 1/1 :pitch-change :all
;              :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2)))
;           (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
;              :pitch-seq  '((7/4) (3/2) (2) (7/6) (8/7)))
;         )
;  :41-1 ((post "41, s3 in, s8 to 4")
;          (s3 'set :unmuted 1)
;          (s2 'set :root '(1) :base-ratio 1/1      
;              :pitch-seq '((9/8) (2) (7/6 2/1) (8/7) (7/4)))
;          (s8 'set :root '(1) :base-ratio 1/1  :unmuted 1
;              :pitch-seq  '((7/6) (4/3) (7/4) (3/2)))
;        )
          

;:4-4    ((stop) (live-stop) )
  ;:5-1    ((post "5-1, s2 adds a note, more s4 sounding")
  ;         ; s1 no change
  ;         ; s2 adds one note
  ;         (s2 'set :root '(1) :base-ratio 1/1      
  ;            :pitch-seq '((7/6) (8/7) (7/4)))
  ;         ; s4 adds more sounding notes
  ;         (s4 'set :root '(1) :base-ratio 1/1      ;2
  ;            :amp-seq      '(3   0   0   2   0   3   0   2   0   1) 
  ;            :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
  ;         ; s7 and s8 come in
  ;         ;(s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
  ;         ;   :pitch-seq  '((7/4) (3/2)))       ;3
  ;         ;(s8 'set :root '(1) :base-ratio 1/1  :unmuted 0
  ;         ;   :pitch-seq    '((4/3)))               ;1  
  ;        )
  ;:9-1    ((post "9-1 s8 in")
  ;         (s1 'set :root '(1) :base-ratio 1/1 
  ;            :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
  ;         ; s2 adds up to 4
  ;         ;(s2 'set :pitch-seq '((7/6) (8/7) (7/4) (4/3)))
  ;         ; s4 adds more sounding notes
  ;         (s4 'set :root '(1) :base-ratio 1/1      ;2
  ;            :amp-seq      '(3   0   2   2   0   3   0   2   0   1) )
  ;         ; s7 up to three
  ;         (s7 'set :pitch-seq  '((7/4) (3/2) (1)))       
  ;         (s8 'set :unmuted 1 :pitch-seq  '((4/3)))               
  ;        )
  ;:13-1   ((post "13-1")
  ;         ; s1 no change 
  ;         ; s2 adds up to 5
  ;         (s2 'set :root '(1) :base-ratio 1/1      
  ;            :pitch-seq '((2) (7/6) (8/7) (7/4) (4/3)))
  ;         ; s4 adds more sounding notes
  ;         (s4 'set :root '(1) :base-ratio 1/1      ;2
  ;            :amp-seq      '(3   0   2   2   0   3   1   2   0   1) 
  ;            :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
  ;         ; s7 up to 4
  ;         ;(s7 'set :pitch-seq  '((7/6) (7/4) (3/2) (1)))       
  ;         ; s8 no change
  ;        )
  ;:17-1   ((post "17-1 bring in s7")
  ;         ; s1 no change 
  ;         ; s2 no change - 5 pitches
  ;         (s4 'set :root '(1) :base-ratio 1/1      ;2
  ;            :amp-seq      '(3   0   2   2   1   3   1   2   1   1) 
  ;            :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
  ;         (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
  ;            :pitch-seq  '((7/4) (3/2)))       ;3
  ;         ; s8 no change
  ;         (s8 'set :pitch-seq  '((7/6) (4/3)))               
  ;        )
  ;:21-1   ((post "21-1 s2 to 7, s7 to 4, s8 to 4")
  ;         ; s1 no change 
  ;         (s2 'set :root '(2) :base-ratio 1/1      
  ;            :pitch-seq '((9/8) (2) (7/6) (8/7) (7/4) (4/3) (3/2)))
  ;         (s4 'set :root '(1) :base-ratio 1/1      ;2
  ;            :amp-seq      '(3   0   2   2   1   3   1   2   1   1) 
  ;            :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
  ;         (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
  ;            :pitch-seq  '((7/4) (3/2) (2) (7/6))) 
  ;         ; s8 to 4
  ;         (s8 'set :pitch-seq  '((7/6) (4/3) (7/4) (3/2)))               
  ;        )
  ;:25-1   ((post "25-1 s7 to 6, s7 to 5, s3 in")
  ;         ; s1 no change 
  ;         ; s2 no change - 5 pitches
  ;         (s3 'set :unmuted 1)
  ;         (s4 'set :root '(1) :base-ratio 1/1      ;2
  ;            :amp-seq      '(3   0   2   2   1   3   1   2   1   1) 
  ;            :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
  ;         (s7 'set :root '(1) :base-ratio 1/1  :unmuted 1
  ;            :pitch-seq  '((7/4) (3/2) (2) (7/6) (8/7) (4/3)))       ;3
  ;         (s8 'set :pitch-seq  '((1) (7/6) (4/3) (7/4) (3/2)))               
  ;        )




  ;:101-1   ((post "21-1")
  ;         (s1 'set :root '(1) :base-ratio 1/1 
  ;            :pitch-seq '((1) (4/3) (8/7) (7/6) (7/4) (9/7 7/4) (3/2))) 
  ;         ; s2 adds up to 4
  ;         (s2 'set :root '(1) :base-ratio 1/1      
  ;            :pitch-seq '((7/6) (8/7) (7/4) (4/3)))
  ;         ; s4 adds more sounding notes
  ;         (s4 'set :root '(1) :base-ratio 1/1      ;2
  ;            :amp-seq      '(3   0   2   2   0   3   1   2   0   1) 
  ;            :pitch-seq    '((1/2) (1/1) (7/4 1/2) (4/3 1/2) (9/7 7/4 1/2))) 
  ;         ; s7 up to 5
  ;         (s7 'set :pitch-seq  '((1) (7/6) (7/4) (3/2) (1) (7/6)))       
  ;         ; s8 to 5
  ;         (s8 'set :pitch-seq  '((2) (7/6) (4/3) (7/4) (3/2)))               
  ;        )
 


;:5-1    ((set-roots '(7/4 1/2)))
  


  ;:9-1    ((dolist (s (list s1 s2 s7 s8)) (s 'set :root '(1))))
  ;:13-1    ((dolist (s (list s1 s2 s7 s8)) (s 'set :root '(7/4 1/2))))


  ;:5-1    ((c-2))
  ;:9-1    ((c-1))
  ;:13-1   ((c-2b))
  ;:17-1   ((c-1))
  ;:12-4   ((c-2b))
  ;:16-4   ((c-1))
  ;:20-4   ((c-2))
  ;:24-4   ((c-1))
  ;:28-4   ((c-2b))
  ;:32-4   ((c-1))
  ;:36-4   ((c-2))
  ;:40-4   ((c-1))
  ;:44-4   ((c-2b))

 )))


