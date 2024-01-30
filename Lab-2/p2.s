;GCD
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
	MOV R1,#108
	MOV R2,#144
UP
	CMP R1,R2
	BEQ GCD
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
	BEQ GCD
	B UP
	
GCD
	MOV R10,R2
STOP
	B STOP
	END