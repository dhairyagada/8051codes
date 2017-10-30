org	0x00
			mov a,#0ffh
			mov tmod,#02h						;Specifies timer 0 is to be used in mode 2 Auto Reload!
			mov th0,#0afh
again:		mov p1,a
			cpl a
			acall delay
			sjmp again
	
org	0x300		
Delay:		
			setb tr0							;Starts timer 0
			up:
			jbc tf0,over						;
			sjmp up								;Monitors Timer 0 flag to become high and then makes it zero again
			over:
			ret
end		