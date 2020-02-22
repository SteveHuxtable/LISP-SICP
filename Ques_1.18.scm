;; fast-multiplication in the iteration method
(define (double a) 
    (* 2 a))
(define (halve a)
    (if (even? a) 
        (/ a 2)
        (else a)))

(define (fast-multiplication-iter a b)
    (cond ((= b 1) a)
          ((even? a) (fast-multiplication-iter (double a) (halve b)))
          (else (+ a (fast-multiplication-iter a (- b 1))))))

(fast-multiplication-iter 2 4)