(define (make-interval a b) (cons a b))
(define (lower-bound inv) (car inv))
(define (upper-bound inv) (cdr inv))
; have a test
(define test-inv (make-interval 10 15))
(lower-bound test-inv)
(upper-bound test-inv)

(define (add-interval x y)
    (make-interval (+ (lower-bound x) (lower-bound y))
                   (+ (upper-bound x) (lower-bound y))))