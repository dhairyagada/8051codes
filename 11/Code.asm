org 0000h
			ljmp main

org 0003h						;Vector Location For External Interrupt 0
			cpl p1.0	
reti

org 30h
main:
		mov p1,#00h
		setb p1.0
		mov ie,#81h				;Activating External Interrupt	
		clr p3.2				;Making External Interrupt Pin Low through Software
		;mov tcon,#00h
		here:sjmp here
end