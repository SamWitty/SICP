; Page 26
; Implement a cube root function, given the knowledge of equation on page 26.
; The only difference between this and sqrt is the improve function.

(define (improve guess x)
    (/ (+ (/ x 
    		 (* guess guess)) 
    	  (* 2 guess))
    	3))

(define (good-enough? guess prev-guess x)
    (< (abs (/ (- guess prev-guess) guess)) 0.001))

(define (cbrt-iter guess prev-guess x)
	(if (good-enough? guess prev-guess x)
		guess
		(cbrt-iter (improve guess x)
					guess
					x)))

(define (cbrt x)
	(cbrt-iter 1.0 0.01 x))