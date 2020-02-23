(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
        (product term (next a) next b))))

(define (inc-two n) (+ n 2))
(define (get-term a) (/ (* (- a 1) (+ a 1)) (* a a)))

(define (product-new a b)
    (product get-term a inc-two b))

(get-term 3)
(product-new 3 3)