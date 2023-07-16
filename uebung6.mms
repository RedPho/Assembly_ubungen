a IS $1
z IS $2
I IS $3
ADR IS $4
ZIFFER IS $5
i IS $6

		LOC Data_Segment
		GREG @
Buf 	BYTE 0
		LOC Buf+80
Arg		OCTA Buf
		BYTE 80

		LOC #100
		GREG @

SetSch	SET I,$255
		SUB I,I,1
		LDA ADR,Buf
		SET i,0

jump1	LDB ZIFFER,ADR,i
		CMP $7,ZIFFER,a
		BN $7,jump2
		CMP $8,ZIFFER,z
		BP $8,jump2
		SUB ZIFFER,ZIFFER,32
		STB ZIFFER,ADR,i

jump2	ADD i,i,1
		CMP $9,i,I
		BN $9,jump1

END		GO $0,$0,0

Main	LDA $255,Arg
		TRAP 0,Fgets,StdIn
		SET a,97
		SET z,122
		GO $0,SetSch
		LDA $255,Buf
		TRAP 0,Fputs,StdOut
		TRAP 0,Halt,0