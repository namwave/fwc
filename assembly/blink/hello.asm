;hello
;using assembly language for turning LED on


.include "/home/namrath/Downloads/fwc/assembly/blink/m328Pdef.inc"


  ldi r16,0b00100000 ;Each bit of DDRB Register corresponds to a pin on Arduino
  out DDRB,r16 ;Making PB5(Pin 13 Arduino) as O/P
  ldi r17,0b00000000 
  out PortB,r17 ;Making Pin 13 HIGH (Same as digitalWrite(13, HIGH)
Start:
  rjmp Start
