; 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

; 1.3
(define (abs x)
    (if (< x 0) 
        (- x)
        x))
(abs -10)

(define a 3)
(define b 4)
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
    (+ a 1))

;1.3 
(define (sum a b)
        (+ a b))
(sum a b)

(define (sum-of-big-two a b c) 
    (if (and (< a c) (< a b)) (+ b c) 
    (if (and (< b a) (< b c)) (+ a c)
    (if (and (< c a) (< c b)) (+ a b)))))
(sum-of-big-two 4 2 3)

; 1.4
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))
(a-plus-abs-b 10 1)

; Newton method
; 1.7 and 1.8
; the function get cubic(x)
(define (cubic x) (* x x x))
(cubic 3)
; the function test the goodness of approach
(define (abs x)
    (if (< x 0) 
        (- x)
        x))

(define (good-enough? guess num) 
    (< (abs (- (cubic guess) num)) 0.001))
(good-enough? 3.1 27)

(define (improve guess num)
    (/ (+ (/ num (* guess guess)) (* 2 guess)) 3))
; try 'improve'
(improve 3.1 27)

(define (newton-iter guess num) 
        (if (good-enough? guess num) 
            guess
            (newton-iter (improve guess num)
                         num)))

(newton-iter 3.1 27)

;;;; part 1.2
; two factorial
(define (factorial_1 n) 
    (if (= n 1) 
        1
        (* n (factorial_1 (- n 1)))))
(factorial_1 10)

; define a iteration process
(define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))

(define (factorial_2 n)
    (fact-iter 1 1 n))

; to solve 2 4 6 8 10 ... (5000 total)
(define (sum-even-num sum temp-num count)
    (if (= count 0)
        sum
        (sum-even-num (+ sum temp-num) 
                      (+ temp-num 2)
                      (- count 1))))

(sum-even-num 0 2 3)

; Fibonacci
; method 1
(define (fib n) 
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib (- n 1)) (fib (- n 2))))))
(fib 5)

; method 2
(define (fib n) 
    (fib-iter 1 0 n))

(define (fib-iter a b count)
    （if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))