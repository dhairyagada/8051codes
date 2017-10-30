ORG 0000H
	LJMP Main
	
ORG 300H
	Main:
	MOV IE,#83H
	MOV TMOD,#02H
	MOV TH1,#0A3H
	SETB TR0
	MOV P0,#00H
	MOV P1,#00H
	MOV P3,#0FfH			
	;mov P3,#00H			;Uncomment This to Activate External Interrupt ,External Interrupt will mask the timer interrupt
	SJMP $
	

ORG 0003H
	CPL P1.0
	RETI
ORG 000BH
	CPL P0.0
	clr TF0
	RETI

END