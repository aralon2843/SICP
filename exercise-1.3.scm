(define (sum-of-squares a b) (+ (square a) (square b)))

(define (>= x y) (or (> x y) (= x y)))

(define (sum-of-two-largest-squares a b c) 
    (cond
        ((and (> a c) (>= b c)) (sum-of-squares a b))
        ((and (> b a) (>= c a)) (sum-of-squares b c))
        ((and (> c b) (>= a b)) (sum-of-squares c a))
        (else "All three numbers are equal")))

(sum-of-two-largest-squares 2 2 -2)