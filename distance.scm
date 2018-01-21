; set of functions to calculate
; horizontal distance of a thrown
; object with an initial velocity and angle

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
