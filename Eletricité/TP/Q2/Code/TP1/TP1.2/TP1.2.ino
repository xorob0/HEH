const int redPin = 11; // Utilisation du pin 11 pour la couleur rouge
const int greenPin = 10; // Utilisation du pin 10 pour la couleur verte
const int bluePin = 9; // Utilisation du pin 9 pour la couleur bleu

void setup()
{
	// Initialisation des pins comme sortie
	pinMode(redPin, OUTPUT);
	pinMode(greenPin, OUTPUT);
	pinMode(bluePin, OUTPUT);
}

void loop()
{
	setColor(255, 0, 0);  // Affiche du rouge pendant une seconde
	delay(1000);
	setColor(0, 255, 0);  // Affiche du vert pendant une seconde
	delay(1000);
	setColor(0, 0, 255);  // Affiche du bleu pendant une seconde
	delay(1000);
	setColor(255, 255, 0);  // Affiche du jaune pendant une seconde
	delay(1000);
	setColor(80, 0, 80);  // Affiche du mauve pendant une seconde
	delay(1000);
}

void setColor(int red, int green, int blue)
{
	// A decommenter si la led est a anode commune
	/*
	   red = 255 - red;
	   green = 255 - green;
	   blue = 255 - blue;
	 */
	analogWrite(redPin, red);
	analogWrite(greenPin, green);
	analogWrite(bluePin, blue);
}
