; Page 42
; Write a procedure that computes the numbers of Pascal's triangle via a recurive process.

(define (pascal row col)
	(cond ((= col 0) 1)
		  ((= row col) 1)
		  (else (+
		  			(pascal (- row 1) (- col 1))
		  			(pascal (- row 1) col)))))

; This procedure assumes that no illegal inputs, i.e. col > row, are enterred.