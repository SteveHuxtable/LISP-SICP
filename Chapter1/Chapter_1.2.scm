; 1.11
; recursion version
(define (function_1 n) 
    (cond ((= n 1) 1)
          ((= n 2) 2)
          ((= n 3) 3)
          (else (+ (* 1 (function_1 (- n 1))) 
                   (* 2 (function_1 (- n 2))) 
                   (* 3 (function_1 (- n 3)))))))

(function_1 4)

; iteration version
(define (function_2 count)
    (function_iter 3 2 1 count))

(define (function_iter n_1 n_2 n_3 count)
    (if (= count 3) 
        n_1 
        (function_iter (+ (* n_1 1) (* n_2 2) (* n_3 3)) 
                          n_1 
                          n_2 
                          (- count 1))))

(function_2 4)

; 1.2.4
; recursion version
(define (expt b n)
    (if (= n 0)
        1
        (* b (expt b (- n 1)))))
; iteration version
(define (expt_2 b n)
    (expt-iter b n 1))

(define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b 
                   (- counter 1)
                   (* product b))))
; a more effective way
(define (fast-expt b n)
    (cond ((= n 0) 1)
          ((even? n) (square (fast-expt b (/ n 2))))
          (else (* b (fast-expt b (- n 1))))))
(define (even? n)
    (= (remainder n 2) 0))
