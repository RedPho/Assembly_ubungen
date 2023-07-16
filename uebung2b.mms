x IS $3
a IS $4
b IS $5
c IS $6
Y IS $7

		LOC #100
Main	FLOT x,12
		FLOT b,15
		FLOT c,10
		FDIV a,b,c
		FLOT b,17
		FDIV b,b,c
		FMUL a,a,x
		FMUL b,b,x
		FSQRT a,a
		FSQRT b,b
		FADD Y,a,b
		TRAP 0,Halt,0
		
		