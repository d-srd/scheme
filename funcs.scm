; Hello world as a variable
(define vhello "Hello World")

; Hello world as a function
 (define fhello (lambda ()
                  "Hello World"))

; Hello with a parameter
 (define hello
   (lambda (name)
     (string-append "Hello " name "!")))

; sum three numbers
 (define (sum3 a b c)
   (+ a b c))

; add 1
 (define add1
   (lambda (x)
     (+ x 1)))

; sub 1
 (define sub1
   (lambda (x)
     (- x 1)))

; value of pi
(define pi (* 4 (atan 1)))

; degrees to radians
(define degtorad
  (lambda (deg)
    (* (/ pi 180) deg)))

; distance is velocity * time in classical mechanics
(define dist
  (lambda (vel t)
    (* vel t)))

; time until an object thrown with initial velocity vel
; reaches the ground
(define time
  (lambda (vel)
    (/ (* 2 vel) 9.8)))

; horizontal distance of an object thrown with
; initial velocity vel and degree deg
(define fdist
  (lambda (vel deg)
    (dist
      (* vel (cos (degtorad deg)))
      (time (* vel (sin (degtorad deg)))))))

