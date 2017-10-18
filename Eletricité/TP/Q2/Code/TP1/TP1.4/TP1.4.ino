const int a = 2;  // Le segment a est connecte au pin 2
const int b = 3;  // Le segment a est connecte au pin 3
const int c = 4;  // Le segment a est connecte au pin 4
const int d = 5;  // Le segment a est connecte au pin 5
const int e = 6;  // Le segment a est connecte au pin 6
const int f = 7;  // Le segment a est connecte au pin 7
const int g = 8;  // Le segment a est connecte au pin 8
const int dot = 9; // Le segment correspondant au point est connecte au pin 9
const int d1 = 10; // Le premier chiffre est connetce au pin 10
const int d2 = 11; // Le second chiffre est connetce au pin 11
const int d3 = 12; // Le troisieme chiffre est connetce au pin 12
const int d4 = 13; // Le dernier chiffre est connetce au pin 13

void setup() {
	// Initialisation de tout les segment en tant que sortie
	pinMode(a, OUTPUT);  //A
	pinMode(b, OUTPUT);  //B
	pinMode(c, OUTPUT);  //C
	pinMode(d, OUTPUT);  //D
	pinMode(e, OUTPUT);  //E
	pinMode(f, OUTPUT);  //F
	pinMode(g, OUTPUT);  //G
	pinMode(d1, OUTPUT);  //d1
	pinMode(d2, OUTPUT);  //d2
	pinMode(d3, OUTPUT);  //d3
	pinMode(d4, OUTPUT);  //d4
}

void loop() {
	for(int number = 9999; number >=0; number--) // Commencer le décompte à 9999, le finir à 0
	{
		for(int i = 0; i <1001; i++) // Rafraichir l'écran toute les millisecondes pendant 1 seconde
		{
			displayNumber(number); // Afficher le nombre
			delay(1);
		}
	}
	delay(1000);
}

void displayNumber(int number)
{
	ClearNumber();
	displayDigit(number%10, 0); // L'unité correspond au nombre%10

	ClearNumber();
	displayDigit((number%100)/10, 1); // La disaine correspond au nombre%100 divisé par 10 par division entière

	ClearNumber();
	displayDigit((number%1000)/100, 2); // La centaine correspond au nombre%1000 divisé par 100 par division entière

	ClearNumber();
	displayDigit(number/1000, 3); // Le millier correspond au nombre divisé par 1000 par division entière
}

void displayDigit(int number, int pos)
{
	// Active la position souhaitée
	if(pos == 0)
		digitalWrite(d1, HIGH);

	if(pos == 1)
		digitalWrite(d2, HIGH);

	if(pos == 2)
		digitalWrite(d3, HIGH);

	if(pos == 3)
		digitalWrite(d4, HIGH);

	// Allume les segments correspondants au chiffre souhaité

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
	// Passe tout les sorties à 0 et reset l'afficheur.
	digitalWrite(d1, LOW);
	digitalWrite(d2, LOW);
	digitalWrite(d3, LOW);
	digitalWrite(d4, LOW);
	digitalWrite(a,LOW);
	digitalWrite(b,LOW);
	digitalWrite(c,LOW);
	digitalWrite(d,LOW);
	digitalWrite(e,LOW);
	digitalWrite(f,LOW);
	digitalWrite(g,LOW);
}

