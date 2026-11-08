(load "sec-1-1-7.scm")
(load "ex-1-07.scm")

(define (cuberoot-iter guess x)
  (let ((next-guess (cuberoot-improve guess x)))
    (if (younghoc-good-enough? guess next-guess)
      next-guess
      (cuberoot-iter next-guess x))))

(define (cuberoot-improve guess x)
  (/
    (+ (/ x (* guess guess)) (* 2 guess))
    3))

(define (cuberoot x)
  (cuberoot-iter 1.0 x))

(cuberoot -2)
