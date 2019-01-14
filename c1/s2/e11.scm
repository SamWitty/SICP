; Page 42
; A function f is defined by the rule that f(n) = n if n < 3 and 
; f(n) = f(n - 1) + 2f(n-2) + 3f(n-3) if n >= 3. 
; Write a procedure that computes f by means of a recursive process.

(define (f1 n)
	(if (< n 3) 
		n
		(+
			(f1 (- n 1))
			(* 2
			   (f1 (- n 2)))
			(* 3
				(f1 (- n 3))))))

; This is recursive because each call leaves the (+ a b) function hanging.

; Write a procedure that computes f by means of an iterative process.

(define (f n)
	(if (< n 3)
		n
		(f-iter 2 1 0 n)))
	

(define (f-iter f-1 f-2 f-3 n)
	(if (< n 3)
		f-1
		(f-iter (+ f-1 
				   (* 2 f-2) 
				   (* 3 f-3))
				f-1 
				f-2 
				(- n 1))))