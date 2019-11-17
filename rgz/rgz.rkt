#lang racket
;(rgz '((4 a) b (2 c) (2 a) d (4 e))) test case
(define (append list1 list2)
  (cond ((null? list1) list2)
  (else (cons (car list1) (append (cdr list1) list2))))
)

(define (helptwo multi symbol)
  (cond
    ((zero? (- 1 multi)) symbol)
    (else (helptwo (- multi 1) (append symbol (cons (car symbol) '()))))
   )
) 
     
(define (help para)
  (cond
    ((list? para) (helptwo (first para)  (cons (second para) '() )))
    (else (cons para '()))
   )
)

(define (rgz list)
  (cond
    ((null? list) '())
    (else (append (help (car list)) (rgz (cdr list))))  
  )
)