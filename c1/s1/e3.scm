; Page 21
; Define a procedure that takes three numbers as arguments 
; and returns the sum of the squares of the two larger numbers.

(define (square a) 
    (* a a))

(define (smallest a b c)
    (define ab (< a b))
    (define ac (< a c))
    (define bc (< b c))

    (cond ((and ab ac) a)
          ((and ac bc) b)
          (else c)))

(define (sum-of-2-largest-squares a b c)
    (- (+ (square a) (square b) (square c))
       (square (smallest a b c))))
