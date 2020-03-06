; test the length of a list
(define odds (list 1 3 5 7))
(null? odds)

(define (get-length-2 items)
        (if (null? items)
            0
            (+ 1 (get-length-2 (cdr items)))))

(get-length-2 odds)

(define (get-nth-item items n)
        (if (= n 0)
            (car items)
            (get-nth-item (cdr items) (- n 1))))
(get-nth-item odds 2)

(define even (list 2 4 6 8))
(cons 1 odds)

(define (append list1 list2)
        (if (null? list1)
            list2
            (cons (car list1) (append (cdr list1) list2))))

(define test-list (list 1 2 3 4 5 6 7))
(define test-list2 (list 1 2 3))
(append test-list test-list2)

; Ques 2.18
(define (reverse item)
        (if (null? (cdr item))
            item
            (append (reverse (cdr item)) (car item))))

 (define (reverse-2 items) 
   (if (null? (cdr items)) 
       items 
       (append (reverse-2 (cdr items)) 
               (list (car items))))) 

(reverse-2 test-list2)
(reverse (list 2 1))

; Ques 2.20
(even? 3)

(define (if-first-even first-num . rest) 
    (even? first-num))

(if-first-even 5)