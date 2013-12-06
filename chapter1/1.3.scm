(define (max a b)
  (if (> a b ) a b)
  )

(define (max-of-three a b c)
  (max (max a b) (max b c))
)
