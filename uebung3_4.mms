		LOC Data_Segment
		GREG @
Data	OCTA #12345678

		LOC #100
Main	LDO $1,Data
		LDA $2,Data
		STW $1,$2
		STB $1,$2,4
		STT $1,$2,#A
		TRAP 0,Halt,0
