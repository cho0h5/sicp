(define (f a b c)
  (cond ((and (>= a c) (>= b c)) (+ (* a a) (* b b)))
	((and (>= b a) (>= c a)) (+ (* b b) (* c c)))
	((and (>= c b) (>= a b)) (+ (* c c) (* a a)))))
