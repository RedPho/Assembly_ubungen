	LOC Data_Segment
    GREG @
a OCTA 35
b OCTA 12
c OCTA 79
d OCTA 8
A IS $3
B IS $4
C IS $5
D IS $6
M IS $7
N IS $8

		LOC #100
Main	LDO A,a
		FLOT A,A
		LDO B,b
		FLOT B,B
		LDO C,c
		FLOT C,C
		LDO D,d
		FLOT D,D
		FMUL A,A,D
		FMUL C,C,B
		FADD M,A,C
		FMUL N,B,D
		LDA $9,d
		STO M,$9,8
		STO N,$9,16

	TRAP 0,Halt,0
	