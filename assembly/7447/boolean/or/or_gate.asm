;logical AND, OR and XOR operations
;output displayed using 7447 IC

.include "/home/namrath/Downloads/m328Pdef.inc"

ldi r16, 0b00111100
out DDRD, r16

ldi r16, 0b00000000
ldi r17, 0b00000000

;OR Gate
or r16, r17

ldi r20, 0b00000010 ;counter=2

rcall loopw

out PORTD, r16

Start:
	rjmp Start
	
loopw:
	lsl r16
	dec r20
	brne loopw
	ret
	
