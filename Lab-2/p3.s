;LCM
	AREA   reset, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0X10001000 
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	EXPORT Reset_Handler
	ENTRY
Reset_Handler
	MOV R1,#12
	MOV R2,#16
	MOV R3,R1
	MOV R4,R2
UP
	CMP R1,R2
	BEQ LCM
	BCS DIV
	MOV R5,R1
	MOV R1,R2
	MOV R2,R5
	B DIV

DIV
	SUB R1,R2
	CMP R1,R2
	BCS DIV
	CMP R1,#0
	BEQ LCM
	B UP
	
LCM
	MOV R6,R2
	MUL R5,R3,R4

DIV2
	SUB R5,R6
	ADD R10,#1
	CMP R5,R6
	BCS DIV2
	
STOP
	B STOP
	END