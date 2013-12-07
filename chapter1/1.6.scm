(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)
        )
  )

(define (average a b)(/ (+ a b) 2))

(define (improve guess x)
  (average guess (/ x guess))
  )

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.1)
  )

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)
    )
  )

(define (sqrt x)
  (sqrt-iter 1.0 x)
  )

(sqrt 2)
;Why this lead to ;Aborting!: maximum recursion depth exceeded ?
;Because new-if has a else-clause which is sqrt-iter that also using new-if. cond will use applicative order evaluation express to evaluate a expression
