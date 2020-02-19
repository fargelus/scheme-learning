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

(define (max x y)
  (if (> x y) x y)
)
(define (min x y)
  (if (< x y) x y)
)
(display "Max(4, 5) = ")
(puts (max 4 5))

(define (largest_sum_of_squares x y z)
  (define max_num (max (max x y) z))
  (define second_max
    (cond ((= (- max_num x) 0) (max y z))
          ((= (- max_num y) 0) (max x z))
          ((= (- max_num z) 0) (max x y))
    )
  )
  (sum_of_squares max_num second_max)
)
(puts (largest_sum_of_squares 1 3 6))
