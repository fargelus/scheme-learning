(define (puts v)
  (display v)
  (newline))

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))


(puts (A 1 0))
(puts (A 1 1))
(puts (A 0 3))
(puts (A 2 1))
(puts (A 4 4)) ; Stack Overflow
