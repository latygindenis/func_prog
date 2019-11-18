#lang racket
(define (deleteLast list)
(cond
  ((null? (rest list)) '())
  (else (cons (first list) (deleteLast (rest list))))
  )
)