// Utilisation du port 13 pour la LED rouge
const int led = 13;

void setup() {
	// Initialise le port en tant que sortie
	pinMode(led, OUTPUT);
}

void loop() {
	digitalWrite(led, HIGH);   // Allume la LED
	delay(1000);               // Attend 1000 ms
	digitalWrite(led, LOW);    // Eteint la LED
	delay(1000);               // Attend 1000 ms
}
