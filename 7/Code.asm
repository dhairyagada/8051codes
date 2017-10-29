org 0x0000
				mov a,#00H
	start:		mov P1,a
				acall delay
				add a,#64d
				sjmp start
				

org 300h
	Delay:
	
		mov r1,#02d
	l1:	mov r2,#255d
	l2:	mov r3,#255d
	l3:	nop
		nop
		djnz r3,l3
		djnz r2,l2
		djnz r1,l1
		ret
		end