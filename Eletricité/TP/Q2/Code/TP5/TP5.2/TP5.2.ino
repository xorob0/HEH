#include <IRremote.h>

#include <Stepper.h>
#include <Servo.h>

int stepsPerRevolution = 200;  // change this to fit the number of steps per revolution
// for your motor

// initialize the stepper library on pins 8 through 11:
Stepper myStepper(stepsPerRevolution, 8, 9, 10, 11);
Servo monservo;

int RECV_PIN = 6;
IRrecv irrecv(RECV_PIN);
decode_results results;
bool val = false;

void setup()
{
  Serial.begin(9600);
  irrecv.enableIRIn(); // Initialise le recepteur
  myStepper.setSpeed(60);
    monservo.attach(9);  // utilise la broche 9 pour le contrôle du servomoteur
  monservo.write(0);
}

void loop() {
  if (irrecv.decode(&results)) {
    irrecv.resume(); // Recoit la valeur suivante
      if(results.value == 0xFF30CF)
      val = true;

       if(results.value == 0xFF6897)
       val = false;


}
if(val == true)
{
  monservo.write(0);
}
else
{
  monservo.write(179);
}
}
