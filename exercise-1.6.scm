(define (new-if predicate then-clause else-clause)
 (cond (predicate then-clause)
    (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) 
        x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 3)

; Суть в том, что new-if - процедура, следовательно, при аппликативном
; порядке вычислений интерпретатор начнет вычислять каждый операнд,
; где sqrt-iter - рекурсивная процедура. Интерпретатор вызовет
; sqrt-iter и попадет в рекурсию, а т.к до вызова cond интерпретатор
; не  дойдет, то точки выхода у рекурсии не будет.