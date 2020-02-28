(define (sqrt x)
  (define (good-enough? guess)
    (< (abs(- (square guess) x)) 0.001))

  (define (square x) (* x x))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (average x y)
    (/ (+ x y) 2))

  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

(display (sqrt 4))
(newline)
