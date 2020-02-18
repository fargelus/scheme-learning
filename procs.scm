(define (puts v)
  (display v)
  (newline)
)

(define (square x) (* x x))

(puts (square 21))
(puts (square (square 3)))

(define (sum_of_squares x y)
  (+ (square x) (square y))
)

(puts (sum_of_squares 3 4))

(define (f a)
  (sum_of_squares (+ a 1) (* a 2))
)

(puts (f 5))

(define (>= x y)
  (not (< x y))
)

(puts (>= 3 4))
