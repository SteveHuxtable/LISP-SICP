(define (cube x) (* x x x))

; sum from a to b
(define (sum-a-to-b a b)
    (if (> a b)
        0
        (+ a (sum-a-to-b (+ a 1) b))))

(sum-a-to-b 10 20)

(define (inc n) (+ n 1))
(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

; calculate sum cube(a) to cube(b)
(define (sum-cubes a b)
    (sum cube a inc b))

(sum-cubes 1 4)

; calculate 1*3+5*7+9*11+ ... + n*(n+1) 
(define (inc_4 a)
    (+ a 4))

(define (multi a)
    (* a (+ a 2)))

(define (sum-above a b)
    (sum multi a inc_4 b))

(sum-above 1 9)

; calculate definite integral
(define (integral f a b dx)
    (define (add-dx x) (+ x dx))
    (* (sum f (+ a (/ dx 2)) add-dx b) 
        dx))

(cube 1)
(integral cube 0 1 0.01)