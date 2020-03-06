(define (pascal-triangle row)
  (define (calc-el row, pos)
    (if (one? row pos)
          1
          (+ (calc-el (- row 1) (- pos 1))
             (calc-el (- row 1) pos))))

  (define (one? row pos)
    (or (= pos 0) (< pos (- row 1))))

  (define (print el last?)
    (define str-el (number->string el))
    (if (not last?)
        (display (string-append str-el " "))
        (display str-el)))


  (define i 0)
  (define (calc-el-iter i)
    (if (< i row)
        (print ((calc-el row i) #f)
        ;TODO доделать


(pascal-triangle 2)
