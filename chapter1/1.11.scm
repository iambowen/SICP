(define (foo-recursive n)
  (if(< n 3) n (+(foo-recursive (- n 1))
               (* 2 (foo-recursive (- n 2)))
               (* 3 (foo-recursive (- n 3))))))
(foo-recursive 3)

;; Testing
;;
(foo-recursive 0)
(foo-recursive 1)
(foo-recursive 2)
(foo-recursive 3)
(foo-recursive 4)
(foo-recursive 5)
(foo-recursive 6)


(define (foo-iter n)
  (define (iter a b c n)
    (if (< n 3)
      a
      (iter (+ a (* 2 b) (* 3 c)) a b (- n 1))))
  (if (< n 3)
    n
    (iter 2 1 0 n)))

(foo-iter 0)
(foo-iter 1)
(foo-iter 2)
(foo-iter 3)
(foo-iter 4)
(foo-iter 5)
(foo-iter 6)
