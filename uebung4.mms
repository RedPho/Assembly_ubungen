		LOC Data_Segment
		GREG @
a BYTE 13
b BYTE 14

		LOC	#100
Main	LDA $2,b
		LDB $3,a
		LDB $4,b
		CMP $5,$3,$4
		BNN $5,ista
		BN $5,istb
ista	STB $3,$2,1
		JMP end
istb	STB $4,$2,1
end		TRAP 0,Halt,0