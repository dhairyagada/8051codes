org 0x0000
			mov p0,#0ffh
again:		mov a,#00H
	
			mov p0,a
			acall Delay
			mov a,#55h
			mov p0,a
			acall Delay
			sjmp again

	
org 300h
	Delay:
	
		mov r1,#250d
	l1:	mov r2,#255d
	l2:	mov r3,#03d
	l3:	nop
		nop
		djnz r3,l3
		djnz r2,l2
		djnz r1,l1
		ret
		end