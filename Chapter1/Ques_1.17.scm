; multiplication
; fast multiplicaiton
(define (double a) 
    (* 2 a))
(define (halve a)
    (if (even? a) 
        (/ a 2)
        (else a)))
(define (fast-multiple a b)
    (cond ((= b 1) a)
          ((even? b) (fast-multiple (double a) (halve b)))
          (else (+ a (fast-multiple a (- b 1))))))

(fast-multiple 2 3)