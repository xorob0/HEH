// TODO Ordonner initialisaion de l'heure et
// Inclu la librairie LiquidCrystal qui permet de controler l'écran
#include <LiquidCrystal.h>

//  Réglages de LiquidCristal par rapport aux pins utilisés
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
	// Initialise un écran de 2 lignes de 16 caractères
  lcd.begin(16, 2);
}

void loop() {
	// Initialise l'heure à 22h59m50 et le décalage à 4 characères
  int heure = 22, minutes = 59, secondes = 50, line = 4;
  while(1)
  {
    lcd.setCursor(line, 1);
    if(heure < 10)
    {
      lcd.print(0);
    }
    lcd.print(heure);
    lcd.print(":");
        if(minutes < 10)
    {
      lcd.print(0);
    }
    lcd.print(minutes);
    lcd.print(":");
        if(secondes < 10)
    {
      lcd.print(0);
    }
    lcd.print(secondes);
    delay(1000);
    secondes++;
    if(secondes > 59)
    {
      secondes = 0;
      minutes++;
    }

    if(minutes > 59)
    {
      minutes = 0;
      heure++;
    }

    if(heure > 23)
    {
      minutes = secondes = heure = 0;
    }
  }
  lcd.clear();
}
