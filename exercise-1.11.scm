; рекурсивный процесс

(define (f n)
  (if (< n 3) n (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))

(f 4) ; 11

; итеративный процесс

(define (f n) 
   (define (f-iter a b c count) 
     (cond ((< n 3) n) 
           ((<= count 0) a) 
           (else (f-i (+ a (* 2 b) (* 3 c)) a b (- count 1))))) 
   (f-i 2 1 0 (- n 2))) 

(f 4) ; 11