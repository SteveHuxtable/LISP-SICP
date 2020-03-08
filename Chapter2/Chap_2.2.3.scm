(define nil '())

(define (scale-list items factor)
    (if (null? items)
        nil
        (cons (* (car items) factor)
              (scale-list (cdr items) factor))))

(define test-list (list 1 2 3 4 5))

(scale-list (list 1 2 3 4 5) 2)

(define (map proc items) 
    (if (null? items)
        nil
        (cons (proc (car items))
              (map proc (cdr items)))))

(define (abs x)
    (if (< x 0)
        (- x)
        x))

(define (square x)
    (* x x))

(abs -10)

(map abs (list -1 -2 -3 1 2 3 4 5))
(map square (list -1 -2 -3 1 2 3 4 5))

(define (for-each proc items) 
   (let ((items-cdr (cdr items))) 
     (proc (car items)) 
     (if (not (null? items-cdr)) 
         (for-each proc items-cdr)))) 

(for-each (lambda (x) (newline) (display x)) (list 1 2 3 4))

