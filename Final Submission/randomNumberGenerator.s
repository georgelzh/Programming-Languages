AREA
			MOV		r10, #seed
			LDR		r0, [r10]		; seed
			LDR		r1, [r10, #4] ; inta
			LDR		r2,[r10, #8]  ; intc
			LDR		r3, [r10, #12] ; two
			SUB		r3, r3, #1
			
			;generateRandom
			LDR		r8, [r10, #20] ; counter for the loop
			
			;		; multiply  inta and seed and save it at r4
startAdding
			ADD		r4, r4, r1
			SUB		r0, r0, #1
			
			CMP		r0, #0
			BGT		startAdding
			
			;		add the c and save the value at r4
			ADD		r4, r4, r2
			
			;mode	2 to the power of 32
mod
			AND		r4, r4, r3
			
			SUB		r8, r8, #1
			
			AND		r4, r4, #3
			
			MOV		r9, #result
			STR		r4, [r9]
			
			;CMP		r8, #0 ; loop
			;BGT		generateRandom
			
			
seed			DCD		34
intA			DCD		1103575245
intC			DCD		12345
two			DCD		2147483648
result		FILL		4
times		DCD		2
			END
			;Luka	& George
