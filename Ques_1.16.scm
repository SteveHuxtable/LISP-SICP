; calculate bn in a iteration and fast way
(define (even? n)
    (= (remainder n 2) 0))

(define (expt-iter b n)
    (expt-iter-fast b n 1))

(define (expt-iter-fast b n a)
    ( cond ((= n 0) a)
           ((even? n) (expt-iter-fast (square b) (/ n 2) a))
           (else (expt-iter-fast b (- n 1) (* a b)))
    ))

(expt-iter 2 2)