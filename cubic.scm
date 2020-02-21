(define (puts v)
  (display v)
  (newline))

(define (cubic x)
  (cubic-iter 1.0 x))

(define (cubic-iter guess x)
  (if (good_enough? guess x)
      guess
      (cubic-iter (improve guess x) x)))

(define (square x) (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good_enough? guess x)
  (< (abs (- (* (square guess) guess) x)) 0.001))

(puts (cubic 1331))
(puts (cubic (+ 999 1)))
