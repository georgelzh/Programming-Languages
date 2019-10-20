AREA
		MOV			r8, #intA
		LDR			r0, [r10]
		LDR			r1, [r10, #4]
		; Multiplication by 15

StartAdding
		ADD			r3, r3, r0
		SUB			r1, r1, #1
		;compare r1 to 0
		CMP			r1, #0
		;if r1 is bigger than 0, then branch to startAdding point
		BGT			startAdding

		; Time to store the value
		MOV			r8, #result
		STR			r3, [r8]
		
result		FILL		4
intA			DCD		10
intB			DCD		15
			END