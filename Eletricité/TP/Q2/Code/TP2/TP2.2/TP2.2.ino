// Inclu la librairie LiquidCrystal pour controller l'écran
#include <LiquidCrystal.h>

// Initialise les ins correspondants à l'écran
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
	// Initialise un écran de deux lignes de 16 charactères
  lcd.begin(16, 2);
  // Afficher mon nom
  lcd.print("Timothee Simon");
}

void loop() {
	// Décale le contenu de l'écran d'un charatère à gauche
    lcd.scrollDisplayLeft();
	// Attend 150 ms
    delay(150);
}
