(define (pascal-triangle n k)
    (cond ((= k 1) 1) 
          ((= k n) 1)
          ((> k n) 0)
          ((+ (pascal-triangle (- n 1) (- k 1)) (pascal-triangle (- n 1) k)))))

(pascal-triangle 5 2)