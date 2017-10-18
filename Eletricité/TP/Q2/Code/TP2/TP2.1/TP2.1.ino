// Inclu la librairie LiquidCrystal qui permet de controller l'écran
#include <LiquidCrystal.h>

// Réglages de LiquidCristal par rapport aux pins utilisés
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
	// Initialise un écran de 2 lignes de 16 caractères
	lcd.begin(16, 2);
}


void loop() {
	// Affiche mon nom et le chiffre 4 conne dernier caractère
	lcd.print("Timothee Simon 4");
	// Commence à écrire sur la deuxième ligne
	lcd.setCursor(0, 1);
	// Affiche mon nom et le chiffre 4 conne dernier caractère
	lcd.print("John Snow      4");
	delay(1);
}
