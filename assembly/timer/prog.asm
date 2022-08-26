	.include "/home/namrath/Downloads/fwc/assembly/timer/m328Pdef.inc"
	
sbi DDRB, 5
ldi r16, 0b00000101
out TCCR0B, r16

clr r18

ldi r20, 0b00100000

loop:
	eor r18, r20
	out PORTB, r18
	ldi r19, 0b01000000
	rcall PAUSE
	rjmp loop
	
PAUSE: ;Delay Function
lp2:	;loop runs 64 times
		IN r16, TIFR0 ;tifr is timer interupt flag (8 bit timer runs 256 times)
		ldi r17, 0b00000010
		AND r16, r17 ;need second bit
		BREQ PAUSE 
		OUT TIFR0, r17	;set tifr flag high
	dec r19
	brne lp2
	ret
	
	

