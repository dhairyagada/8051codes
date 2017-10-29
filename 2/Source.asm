org 0x0000
			mov a,#00h
			mov r0,#0ah
	up:		add a,r0
			djnz r0,up
			end
				