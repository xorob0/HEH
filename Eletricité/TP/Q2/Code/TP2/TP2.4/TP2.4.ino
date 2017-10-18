#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  lcd.begin(16, 2);
}

void loop() {
	// set the cursor to (0,0)
	int time = 9999;
	while (time > 0)
	{
		lcd.clear();
		lcd.begin(0,0);
		lcd.print(time);
		delay(1000);
		time--;
	}
	lcd.clear();
}
