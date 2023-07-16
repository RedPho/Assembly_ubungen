	LOC Data_Segment
	GREG @
num OCTA 7
data OCTA 2,10,32,45,21,42,44
n IS $2
m IS $3
da IS $4
sum IS $5
res IS $7
	
		LOC #100
Main 	LDO n,num
		LDA da,data
		ADD m,n,n
		SUB m,n,m
		SET sum,0

add		LDO $6,da
		ADD da,da,8
		ADD sum,sum,$6
		ADD m,m,1
		BN m,add
		DIV res,sum,n
		TRAP 0,Halt,0