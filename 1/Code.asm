org 0x0000
			mov a,00h
			mov r1,#0bh
			mov r0,#35h
			mov r2,#00h
up: 		add a,r1
			jnc decrement
			inc r2
decrement: 	djnz r0,up

end