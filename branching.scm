; geometric series sum
; i.e. (a + ar^2 + ar^3 + ar^4 + ... + ar^n) 
(define (sum-gp a r n)
  (* a
     (if (= r 1)
       n
       (/ (- 1 (expt r n)) (- 1 r)))))

; absolute value of a real number
(define (absolute x)
  (if (< x 0)
    (* x -1)
    x))

; 1/n for any real n
(define (reciprocal x)
  (if (= x 0)
    #f
    (expt x -1)))

; int to ascii
(define (ascii n)
  (if (not (and (>= n 33) (<= n 126) n))
    #f
    (integer->char n)))

; product of 3 positive real numbers
(define (mul3 x y z)
  (if (not (and (> x 0) (> y 0) (> z 0)))
    #f
    (* x y z)))

; product of 3 real numbers when at least one is positive
(define (smul3 x y z)
  (if (or (> x 0) (> y 0) (> z 0))
    (* x y z)
    #f))

; fee for some service
(define (fee age)
  (cond
    ((or (<= age 3) (>= age 65)) 0)
    ((<= 4 age 6) 0.5)
    ((<= 7 age 12) 1.0)
    ((<= 13 age 15) 1.5)
    ((<= 16 age 18) 1.8)
    (else 2.0)))

; grade of an exam
(define (grade score)
  (cond
    ((>= score 80) #\A)
    ((<= 60 score 79) #\B)
    ((<= 40 score 59) #\C)
    ((< score 40) #\D)))
