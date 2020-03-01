(define (puts v)
  (display v)
  (newline))

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (add a b)
  (if (= a 0)
    b
    (inc (add (dec a) b))))

(define (plus a b)
  (if (= a 0)
    b
    (plus (dec a) (inc b))))

(puts (add 2 3))
(puts (plus 2 3))
