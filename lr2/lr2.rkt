#lang racket
(define (power x n)
  (cond ((= n 0) 1)
  (else (* (power x (- n 1)) x )))
)

(define (copy_list list)
  (cond ((null? list) '())
  (else (cons (car list) (copy_list(cdr list)))))
)

(define (member element list)
  (cond ((null? list) 'not_found)
  ((= element (car list)) 'founded)
  (else (member element (cdr list))))
)

(define (append list1 list2)
  (cond ((null? list1) list2)
  (else (cons (car list1) (append (cdr list1) list2))))
)

(define (reverse list)
  (cond ((null? list) '())
  (else (append (reverse (cdr list)) (cons (car list) '()))))
)

(define (full_copy_list list)
  (cond ((null? list) '())
  ((number? list) list) 
  (else (cons (full_copy_list (car list)) (full_copy_list (cdr list))))))

(define (node_counter tree)
  (cond
    ((null? tree) 0)
    (else(+ 1 (node_counter(second tree)) (node_counter(third tree))))))

(define (is_binary_tree_order tree)
  (cond
    ((null? tree) #t)
    ((and (not (null? (second tree))) ( > (car (second tree)) (car tree))) #f)
    ((and (not (null? (third tree))) ( < (car (third tree)) (car tree))) #f)
    (else (and (is_binary_tree_order(second tree)) (is_binary_tree_order(third tree))))
   )
)