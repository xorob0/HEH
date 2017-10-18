const int a = 2;  // Le segment a est connecte au pin 2
const int b = 3;  // Le segment a est connecte au pin 3
const int c = 4;  // Le segment a est connecte au pin 4
const int d = 5;  // Le segment a est connecte au pin 5
const int e = 6;  // Le segment a est connecte au pin 6
const int f = 7;  // Le segment a est connecte au pin 7
const int g = 8;  // Le segment a est connecte au pin 8
const int dot = 9; // Le segment correspondant au point est connecte au pin 9

void setup() {
	// Initialisation de tout les segment en tant que sortie
	pinMode(a, OUTPUT);  //A
	pinMode(b, OUTPUT);  //B
	pinMode(c, OUTPUT);  //C
	pinMode(d, OUTPUT);  //D
	pinMode(e, OUTPUT);  //E
	pinMode(f, OUTPUT);  //F
	pinMode(g, OUTPUT);  //G
}

void loop() {
	for(int number = 9; number >=0; number--) // Commence un décompte allant de 9 à 0 toute les seconde
	{
		ClearNumber();
		displayNumber(number);
		delay(1000);
	}
	//delay(1000);
}

void displayNumber(int number)
{
	// Affiche le chiffre souhaité sur l'afficheur 7 segments
	if(number != 1 && number != 4 && number != 11 && number != 12 && number != 13)
		digitalWrite(a,HIGH);

	if(number != 5 && number != 6 && number != 11 && number != 12 && number != 14 && number != 15)
		digitalWrite(b,HIGH);

	if(number !=2 && number != 12 && number != 14 && number != 15)
		digitalWrite(c,HIGH);

	if(number != 1 && number != 4 && number != 7 && number != 10 && number != 15)
		digitalWrite(d,HIGH);

	if(number == 2 || number == 6 || number == 8 || number == 0 || number >= 10)
		digitalWrite(e,HIGH);

	if(number != 1 && number != 2 && number != 3 && number != 7 && number != 12 && number != 13)
		digitalWrite(f,HIGH);

	if (number != 0 && number != 1 && number !=7)
		digitalWrite(g,HIGH);

}

void ClearNumber()
{
	// Réinitialise l'afficheur 7 segments
	digitalWrite(a,LOW);
	digitalWrite(b,LOW);
	digitalWrite(c,LOW);
	digitalWrite(d,LOW);
	digitalWrite(e,LOW);
	digitalWrite(f,LOW);
	digitalWrite(g,LOW);
}

