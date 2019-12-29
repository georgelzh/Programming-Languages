AREA
		MOV		r0, #array
		ADD		r1, r0, #4
		
loop
		LDR		r2, [r0]
		LDR		r3, [r1]
		CMP		r2, r3
		BLGT		swap ;Branch with link
		ADD		r0, r0, #4
		ADD		r1, r1, #4
		B		loop
		
swap
		STR		lr, [sp], #-4
		LDR		r2, [r0]
		LDR		r3, [r1]
		STR		r2, [r1]
		STR		r3, [r0]
		LDR		pc, [sp], #4
		
done
		
array	DCD		5, 7, 2, 7, 2, 9, 1
		
		END
