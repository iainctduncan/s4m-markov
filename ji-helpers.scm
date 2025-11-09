; just intonation helpers

(define (cents . ratios)
  (let* ((ratio (apply * ratios))
         (dec (exact->inexact ratio))
         (octs (log ratio 2))
         (cents (modulo (* 1200 octs) 1200)))
    (post "ratio:" ratio "dec:" dec "octs:" octs "cents:" cents)
    cents))

(define (octs . ratios)
  (let* ((ratio (apply * ratios))
         (octs (log ratio 2)))
    octs))       
