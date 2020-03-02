(define (puts v)
  (display v)
  (newline))

(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))

(define (f-alt n)
  (f-iter 3 2 1 n))

(define (f-iter a b c n)
  (if (< n 3)
    b
    (f-iter (+ a b c) a b (- n 1))))


(puts (f 6))
(puts (f-alt 6))
