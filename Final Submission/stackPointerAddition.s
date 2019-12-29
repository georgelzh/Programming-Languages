		;This	function using stack pointer to do the operation of z = x + y,
		;then	z = z + x, return z
		
AREA
		MOV		r9, #intX	;store the address of intX in r9
		LDR		r0, [r9]	;load the value from address in r9 to r0
		LDR		r1, [r9, #4] ; load intY at r1
		ADD		r2, r0, r1 ; store the sum of x + y at r2
		STR		r2, [r13] ;store the value in r2 at r13
		
		LDR		r3, [r13] ; load value from r13 to r3
		ADD		r2, r3, r0 ; add value r3 and r0, keep it in r2.
		STR		r2, [r9, #12] ; store value in r2 in address [r9, #8]
		
		
		
		
		
intX		DCD		5
intY		DCD		10
intZ		FILL		4
output	FILL		4
		
		END

;https://www.youtube.com/watch?v=TnESZpRcE_U