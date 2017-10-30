org	0x00
			mov a,#0ffh
again:		mov p1,a
			cpl a
			acall delay
			sjmp again
	
org	0x300		
Delay:		
			mov tmod,#01h						;Specifies timer 0 is to be used in mode 1
			mov tl0,#0afh
			mov th0,#0ffh						;Timer Values for 5 Khz frequency at Crystal of 11.0592 MHz
												;Change this values to change the frequency of wave
			setb tr0							;Starts timer 0
			up:
			jbc tf0,over						;
			sjmp up								;Monitors Timer 0 flag to become high and then makes it zero again
			over:
			ret
end		