(define (puts v)
  (display v)
  (newline))

(define (fact x)
  (if (= x 1)
    1
    (* x (fact (- x 1)))))

(puts (fact 3))
