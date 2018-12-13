; The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small
; numbers. 

; Explanation: For very small numbers, the prespecified threshold of 0.001 will
; be a smaller proportion of the actual square root. For example, 0.0001 error is 100% of (sqrt 0.01), but 
; 1% of (sqrt 1). For very large numbers the fixed error threshold will require a very low percentage error,
; which can never be reached by the finite precision of the physical computing device.

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess prev-guess x)
    (< (abs (/ (- guess prev-guess) guess)) 0.001))

(define (sqrt-iter guess prev-guess x)
    (if (good-enough? guess prev-guess x)
        guess
        (sqrt-iter (improve guess x)
                    guess
                    x)))

(define (sqrt-new x)
    (sqrt-iter 1.0 0.01 x))
; This procedure appears to work much better for small numbers, as it terminates with
; tighter precision.