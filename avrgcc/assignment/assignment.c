#include <avr/io.h>
//#include <util/delay.h>

int main (void)
{
	int X, Y;
	int A=0, B=0, C=0;
	
	DDRB 	|= ((1 << DDB0));
	
	while(1) {
		
		//OR Condition 
		X = (A||B)||C; // (A+B)+C
		Y = A||(B||C);// A+(B+C)
		
		//AND Condition
		// X = (A&&B)&&C; // (A.B).C
		// Y = A&&(B&&C); // A.(B.C)
		
		if(X==Y)
			PORTB = ((1 <<  PB0));
		else if(X!=Y)
			PORTB = ((0 <<  PB0));
		}
	return 0;
}
