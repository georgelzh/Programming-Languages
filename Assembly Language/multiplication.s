AREA
		;George Li
		;multiplication
		MOV		r10, #intA
		LDR		r0, [r10]		;A
		LDR		r1, [r10, #4]	;B
		
loop
		;stop loop when the multiplication is done
		CMP		r0, #0
		BEQ		ending
		CMP		r1, #0
		BEQ		ending

		;Multiplication
		AND		r5, r1, #1 ;get the last digit from B
		CMP		r5, #0	;check if there is a 1
		BGT		addition
		BEQ		shift
		
		
shift
		LSL		r0, r0, #1
		LSR		r1, r1, #1
		B		loop
		
addition
		ADD		r4, r4, r0	;add the value to r4
		SUB		r5, r5, #1
		LSL		r0, r0, #1
		LSR		r1, r1, #1
		B		loop
		
ending
		STR		r4, [r10, #8]
		
intA		DCD		559595
intB		DCD		2994
result	FILL		4
		
		END