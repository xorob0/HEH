const int ledPin = 13; // Utilisation du port 13 pour la led rouge
const int buttonPin = 12; // Utilisation du port 13 pour la led rouge

int buttonState = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, OUTPUT);
}

void loop() {
  
  buttonState = digitalRead(buttonPin);
  
  if(buttonState == HIGH)
  {
    digitalWrite(ledPin, HIGH);
  }
  else
  {
    digitalWrite(ledPin, LOW);
  }

}
