(define (puts v)
  (display v)
  (newline))

(define (pascal-triangle row)
  (define (calc-el row pos)
    (if (one? row pos)
          1
          (+ (calc-el (- row 1) (- pos 1))
             (calc-el (- row 1) pos))))

  (define (one? row pos)
    (or (= pos 0) (= pos (- row 1))))

  (define (print el last?)
    (define str-el (number->string el))
    (if (not last?)
        (display (string-append str-el " "))
        (puts str-el)))

  (define (print-element-from-pos i)
    (define el (calc-el row i))
    (if (= (+ i 1) row)
        (print el #t)
        (print el #f)))

  (define (calc-el-iter i)
    (if (< i row)
        ((print-element-from-pos i)
         (calc-el-iter (+ i 1)))))

  (calc-el-iter 0))

(pascal-triangle 5)
