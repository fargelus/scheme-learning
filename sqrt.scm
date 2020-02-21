(define (puts v)
  (display v)
  (newline)
)

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (cond ((good_enough? guess x) guess)
        (else sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(puts (sqrt 121))
(puts (sqrt (+ 100 37)))
(puts (square (sqrt 1000)))
