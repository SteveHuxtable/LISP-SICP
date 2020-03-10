(list 'a 'b 'c)
(list (list 'george))
(cdr '((x1 x2) (y1 y2)))
(cadr '((x1 x2) (y1 y2)))
(pair? (car '(a short list)))
(car '(a short list))
(car ''abracadabra)
(cdr ''abracadabra)

;; to find a string in a list
(define (memq item x)
    (cond ((null? x) false)
          ((eq? item (car x)) x)
          (else (memq item (cdr x)))))

(memq 'red '((red blue) (blue yellow)))
(memq 'red '(red blue yellow green))

; Ques 2.54
(pair? 'a)
(define (equal? items1 items2)
    (cond ((and (not (pair? items1)) (not (pair? items2))) (eq? items1 items2))
          ((and (pair? items1) (not (pair? items2))) false)
          ((and (not (pair? items1)) (pair? items2)) false)
          (else (if (not (eq? (car items1) (car items2)))
                    false
                    (equal? (cdr items1) (cdr items2))))))

(equal? 'a 'b)
(equal? '(apple banana orange) '(apple banana orange))
(equal? '(apple banana orange) '(apple (banana) orange))