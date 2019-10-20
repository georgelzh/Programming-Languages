;File name: 3 multiplies by 10. 
;Name: George Li(zhihongli@bennington.edu)

AREA
		;3 multiply 10
		
		MOV		r10, #intA
		LDR		r2, [r10]
		LDR		r3, [r10, #4]
		;shift	to the left 3 digits, which means to multiply 8
		LSL		r0, r2, #3
		
		;to		add 6(3*2) more to reach to times.
		ADD		r0, r0, r3
		STR		r0, [r10]
		
intA		DCD		3
intB		DCD		6
product	FILL		4
		END


;https://www.mathsisfun.com/binary-number-system.html
;https://www.convertbinary.com/numbers/