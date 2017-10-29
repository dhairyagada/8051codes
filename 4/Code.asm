org 0
			mov A,#03H
back: 		mov p1,A
			Lcall Delay
			mov p1,#10011111b
			Lcall Delay
			mov p1,#00100101b
			Lcall Delay
			mov p1,#00001101b
			Lcall Delay
			mov p1,#10011001b
			Lcall Delay
			mov p1,#01001001b
			Lcall Delay
			mov p1,#01000001b
			Lcall Delay
			mov p1,#00011111b
			Lcall Delay
			mov p1,#00000001b
			Lcall Delay
			mov p1,#00001001b
			Lcall Delay
			sjmp back

org 300h
	Delay:
	
			mov r1,#250d
	l1:		mov r2,#255d
	l2:			mov r3,#03d
	l3:		nop
			nop
			djnz r3,l3
			djnz r2,l2
			djnz r1,l1
			ret
			end