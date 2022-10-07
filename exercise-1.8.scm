(define (cube-root-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (cube-root-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? previous-guess guess)
    (< (abs (/ (- guess previous-guess) guess)) 0.00000000001))

(define (cube-root x)
    (cube-root-iter 1.0 x))

(cube-root 27)
