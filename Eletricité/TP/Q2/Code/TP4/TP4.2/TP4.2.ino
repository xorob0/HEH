#include <IRremote.h>

int RECV_PIN = 11;
IRrecv irrecv(RECV_PIN);
decode_results results;

void setup()
{
  Serial.begin(9600);
  irrecv.enableIRIn(); // Initialise le recepteur
}

void loop() {
  if (irrecv.decode(&results)) {
    Serial.println(results.value, HEX);
    irrecv.resume(); // Recoit la valeur suivante
    switch(results.value)
    {
      case 0xFF6897:
        digitalWrite(2, HIGH);
        break;
      case 0xFF30CF:
        digitalWrite(2, LOW);
        break;
    }
  }
}
