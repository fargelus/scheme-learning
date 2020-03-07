(define (puts v)
  (display v)
  (newline))

(define (expt b n)
  (if (= n 1)
      b
      (* b (expt b (- n 1)))))

(define (expt-alt b n)
  (define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b (- counter 1) (* b product))))

  (expt-iter b n 1))


(puts (expt 2 5))
(puts (expt-alt 2 5))
