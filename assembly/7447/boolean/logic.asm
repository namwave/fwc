.include "/home/namrath/Downloads/m328Pdef.inc"

ldi r16, 0b00111100 ;identifying output pins 2,3,4,5
out DDRD,r16		;declaring pins as output

ldi r16,0b00000000	;initializing W
ldi r17,0b00000001	;initializing X
ldi r18,0b00000001	;initializing Y
ldi r19,0b00000001	;initializing Z

ldi r21,0b00000001

mov r22, r16
eor r22, r21
mov r16, r22

ldi r20, 0b00000010	;counter = 2

rcall loopw		;calling the loopw routine

out PORTD,r16		;writing output to pins 2,3,4,5


Start:
rjmp Start

;loop for bit shifting
loopw:	
	lsl r16			;left shift
	lsl r17
	dec r20			;counter --
	brne	loopw	;if counter != 0
	ret
