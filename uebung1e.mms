a IS $3
b IS $4
buf1 IS $5
buf2 IS $6
x IS $7

		LOC #100
Main 	SET a,15
		SET b,8
		SUB buf1,a,b
		ADD buf2,a,b
		MUL buf2,buf2,buf2
		MUL x,buf1,buf2
		TRAP 0,Halt,0