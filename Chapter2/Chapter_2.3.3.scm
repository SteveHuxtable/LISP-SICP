;; how to design a set
(define (equal? items1 items2)
    (cond ((and (not (pair? items1)) (not (pair? items2))) (eq? items1 items2))
          ((and (pair? items1) (not (pair? items2))) false)
          ((and (not (pair? items1)) (pair? items2)) false)
          (else (if (not (eq? (car items1) (car items2)))
                    false
                    (equal? (cdr items1) (cdr items2))))))

(define (element-of-set? x set)
    (cond ((null? set) false)
          ((equal? x (car set)) true)
          (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
    (if (element-of-set? x set) 
        set
        (cons x set)))

(define (intersection-set set1 set2)
    (cond ((or (null? set1) (null? set2)) '())
          ((element-of-set? (car set1) set2)
            (cons (car set1) (intersection-set (cdr set1) set2)))
          (else (intersection-set (cdr set1) set2))))

(define (union-set set1 set2)
    (cond ((not (pair? set1)) (if (element-of-set? (car set1) set2) 
                                   set2
                                   (cons (car set1) set2)))
          (else (if (element-of-set? (car set1) set2) 
                                   (union-set (cdr set1) set2)
                                   (cons (car set1) (union-set (cdr set1) set2))))))