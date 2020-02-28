(define (puts v)
  (display v)
  (newline))

(define (alt_sqrt_iter prev_guess x)
  (define guess (improve prev_guess x))
  (if (cmp_good_enough? guess prev_guess)
      guess
      (alt_sqrt_iter guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (cmp_good_enough? guess prev_guess)
  (< (abs (- guess prev_guess)) 0.001))

(define (sqrt x)
  (alt_sqrt_iter 1.0 x))

(puts (sqrt 121))
(puts (sqrt (+ 100 37)))
(puts (sqrt 10000))
