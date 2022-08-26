#include <Arduino.h>

int A=1,B=1,C=1;
int X,Y;

void blink(int K,int L)
{
if (K==L)
	{
	Serial.println("X Val");
	Serial.println(K);
	Serial.println("Y Val");
	Serial.println(L);
	digitalWrite(8, HIGH);
	}
}

void setup()
{
	Serial.begin(9600);

	pinMode(8, OUTPUT);
}

void loop()
{
	X = (A||B)||C;
	Y = A||(B||C);
	blink(X,Y);
	delay(5000);
}
//&& is the AND operation
// || is the OR operation
// ! is the NOT operation
