(load "sec-1-1-7.scm")

(define (younghoc-sqrt-iter guess x)
  (let ((next-guess (improve guess x)))
    (if (younghoc-good-enough? guess next-guess)
      next-guess
      (younghoc-sqrt-iter next-guess x))))

(define (younghoc-good-enough? old-guess new-guess)
  (< (/ (abs (- old-guess new-guess)) (abs old-guess)) 0.01))

(younghoc-sqrt-iter 1.0 0.000001)
