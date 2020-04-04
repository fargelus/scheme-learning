(define (puts v)
  (display v)
  (newline))

(define (max . args)
  (define args_len (length args))
  (define (args-iter max_el index)
    (if (= index args_len)
      max_el
      (args-iter
        (max-num max_el (list-ref args index))
        (+ index 1))))

  (args-iter (list-ref args 0) 1))

(define (max-num a b)
  (if (> a b) a b))

(puts (max 1 2 30 10 25))
