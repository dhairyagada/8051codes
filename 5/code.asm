org 0x0000
			setb p1.0
up:			cpl p1.0
			acall delay
			sjmp up
			
			delay:
			mov r1,#151d			;For 1Khz Square Wave
		h1:	nop
			djnz r1,h1
			ret
			end