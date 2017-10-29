org 0x0000
	start:		mov r0,#00H
	incr:		mov P1,r0
				inc r0
				cjne r0,#114d,incr				;Increments for first half of the wave
				dec r0
	decr:		mov P1,r0
				nop
				djnz r0,decr					;Decrements for the second half
				sjmp start
				end