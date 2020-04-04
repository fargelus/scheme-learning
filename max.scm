(define (puts v)
  (display v)
  (newline))

(define (max . args)
  (define args-len (length args))
  (define (args-iter max-el index)
    (if (= index args-len)
      max-el
      (args-iter
        (max_num max-el (list-ref args index))
        (+ index 1))))

  (args-iter (list-ref args 0) 1))

(define (max_num a b)
  (if (> a b) a b))

(puts (max 1 2 30 10 25))
