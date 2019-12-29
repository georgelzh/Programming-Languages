;intA is the number you want to mod
;mod is mod number
AREA
					MOV		r10, #intA
					LDR		r0, [r10]
					LDR		r1, [r10, #4]
					LDR		r8, [r10, #4] ; store the original mod num
					CMP		r0,r1
					BLE		ending
					
					;shift	the mod number to the to make just 
					;slightly smaller than intA
loop
					LSL		r1, r1, #1
					CMP		r1, r0
					BLT		loop
					;end		the program with 0 if the values are equal.
					BEQ		outputZero
					LSR		r1, r1, #1
					
					;Subtract	intA to the shifted mod number
subtract
					SUB		r0, r0, r1
					; handle the case when the result is already smaller 
					; than original mod number(input)
					CMP		r0, r8
					;end the program when we get a remainder smaller than mod number
					BLT		ending	
					CMP		r0, r1
					BGT		subtract
					BEQ		outputZero
					
					;handle	case when intA is smaller than mod
					;but	the mod does not equal the original input yet.
					CMP		r1, r8
					BGT		shift_mod_one_more_time
					B		ending
					
					
shift_mod_one_more_time
					LSR		r1, r1, #1
					CMP		r0, r1
					BLT		shift_mod_one_more_time
					B		subtract
					
outputZero
					ADD		r9, r9, #0
					STR		r9, [r10]
					END
					
ending
					STR		r0,[r10, #8]
					
intA					DCD		27897278
mod					DCD		7
result				FILL		4
					END
