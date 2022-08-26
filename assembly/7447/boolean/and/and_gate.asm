.include "/home/namrath/Downloads/m328Pdef.inc"

ldi r16, 0b00111100
out DDRD, r16

ldi r16, 0b00000001
ldi r16, 0b00000001

and r16,r17

ldi r20, 0b00000010

rcall lp

out PORTD, r16

START:
	rjmp START

lp:
	lsl r16
	dec r20
	brne lp
	ret
	
