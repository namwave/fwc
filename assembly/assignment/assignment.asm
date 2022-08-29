
.include "/home/namrath/Downloads/fwc/assembly/blink/m328Pdef.inc"


  ldi r16,0b00000001 ;Each bit of DDRB Register corresponds to a pin on Arduino
  ldi r17,0b00000000 ; A
  ldi r18,0b00000001 ; B
  ldi r19,0b00000000 ; C

; OR Cond: (A+B)+C = A+(B+C)  
  
  or r17,r18 ; (A+B)+C 
  or r17,r19
  
  or r18,r19 ; A+(B+C)
  or r18,r17
  
  cp r17,r18
  breq lbl1
  
lbl1:
	
  eor r17,r17
  com r17
  mov r16,r17  
  
; AND Cond: (A.B).C = A(B.C)
;  
;  and r17,r18 ; (A.B).C
;  and r17,r19
;  
;  and r18,r19 ; A.(B.C)
;  and r18,r17
;  
;  cp r17,r18
;  breq lbl1
;  
;lbl1:
;	
;  eor r17,r17
;  com r17
;  mov r16,r17  

  out DDRB,r16 ;Making PB0(Pin 8 Arduino) as O/P
  out PortB,r16 ;Making Pin 8 HIGH (Same as digitalWrite(8, HIGH))

Start: rjmp Start
