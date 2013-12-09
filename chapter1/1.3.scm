(define (max a b)
  (if (> a b ) a b)
  )

(define (max-of-three a b c)
  (max c (max a b))
  )

(define (max-of-three? a b c x)
  (= (max-of-three a b c) x)
  )

(define (second-largest-of-three a b c)
  (cond ((max-of-three? a b c a) (max b c))
        ((max-of-three? a b c b) (max a c))
        ((max-of-three? a b c c) (max a b))
        )
  )

(define (sum-of-max-two-of-three a b c)
  (+ (max-of-three a b c) (second-largest-of-three a b c))
  )

(sum-of-max-two-of-three 5 3 6)
