org 0x0000
			mov a,00h
			mov r1,#0bh
			mov r0,#35h
			mov r2,#00h
up: 		add a,r1
			jnc decrement
			inc r2			;3rd and 4th digit will be stored here i.e the higher byte result of the product
decrement: 	djnz r0,up

end