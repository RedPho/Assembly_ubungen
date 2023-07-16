p IS $3
r IS $4
h IS $5
a IS $6
b IS $7
V IS $8

		LOC #100
Main	FLOT a,157
		FLOT b,50
		FDIV p,a,b
		FLOT a,15
		FLOT b,10
		FDIV r,a,b
		FLOT h,10
		FMUL a,r,r
		FMUL a,a,p
		FMUL a,a,h
		FLOT b,3
		FDIV V,a,b
		TRAP 0,Halt,0