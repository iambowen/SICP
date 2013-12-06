(define (average a b)(/ (+ a b) 2))

(define (improve guess x)
  (average guess (/ x guess))
  )

(define (good-enough? guess next-guess)
  (< (/ (abs(- next-guess guess)) guess) 0.0001)
  )

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x)) guess (sqrt-iter (improve guess x) x)
    )
  )

(define (sqrt x)
  (sqrt-iter 1.0 x)
  )

(sqrt 10e41)
(sqrt 10e-10)
(sqrt 10e-20)
