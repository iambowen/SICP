(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
  )

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.0001)
  )

(define (curt-iter guess x)
  (if (good-enough? guess x) guess (curt-iter (improve guess x) x)
    )
  )

(define (curt x)
  (curt-iter 1.0 x)
  )

(curt 27)
(curt 8)
(curt 0.001)
