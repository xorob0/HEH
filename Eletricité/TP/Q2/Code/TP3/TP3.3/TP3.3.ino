  
/*
4x4 matrix keyboard

Download the Sketch from my GitHub here.

It’s now possible to purchase a 16 switch keyboard for around £2 from eBay, an example is here. The 16 keys are arranged in a 4 by 4 matrix, four rows by four columns. Rows go from side to side (with the connector pins at the top) and columns go from top to bottom. With the connector at the top key 0 is top left and key 15 is bottom right.

The sketch shown here has a simple debounce routine, reports the key number, then waits for the key to be released. Eight connections are required, four for Rows and four for columns. Pins 2,3,4 and 5 are used for rows and 8,9,10 and 11 are used for columns. On my board, with the connections at the top, the left four pins are Rows and the right four pins are columns.

Once the board is wired to the Arduino upload the sketch below and open the Serial monitor, press a button and its number will be shown. From top left the keys are 0, 1, 2, 3, the next row down, left to right are 4,  5, 6, 7 and so on down to the bottom row which is  12, 13, 14 and 15.

The sketch works as follows, all four Rows are set HIGH, then one Row is set LOW. Each column is read and if a key is pressed the relevant column will be LOW. Using the Row and Column numbers the key number can be calculated. The Rows are reset to HIGH and the next Row is set LOW, the columns are scanned again. If no key is pressed it will take four Row scans to detect this. The key value can be interpreted using a SWITCH loop. Simple switch debounce is achieved by inserting a short delay between keyboard scans.

/****************************************************
4x4 keyboard matrix
By Chris Rouse Oct. 2015
Connect:

Row 1 to Arduino pin 2
Row 2 to Arduino pin 3
Row 3 to Arduino pin 4
Row 4 to Arduino pin 5
Column A to Arduino pin 8
Column B to Arduino pin 9
Column C to Arduino pin 10
Column D to Arduino pin 11

Key identification:
(with connector at the top)
0 1 2 3
4 5 6 7
8 9 10 11
12 13 14 15

Connector:
Rows     Columns

X X X X  X X X X
1 2 3 4  A B C D
(Rows link keys from left to right,
columns link keys from top to bottom)
****************************************************/

#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 13, 7, 6, A4, A5);

int rowCounter =0; // row counter
int columnCounter =0; // column counter
int foundColumn = 0;
boolean foundCol = false;
int keyValue = 0;
int noKey = 0;
boolean readKey = false;
int debounce = 300; // set this to the lowest value that gives the best result
const int row1 = 2;
const int row2 = 3;
const int row3 = 4;
const int row4 = 5;
const int colA = 8;
const int colB = 9;
const int colC = 10;
const int colD = 11;
const int ledPin = 13; // onboard LED

void setup(){
Serial.begin(9600);
pinMode(row1, OUTPUT);
pinMode(row2, OUTPUT);
pinMode(row3, OUTPUT);
pinMode(row4, OUTPUT);
pinMode(colA, INPUT_PULLUP);
pinMode(colB, INPUT_PULLUP);
pinMode(colC, INPUT_PULLUP);
pinMode(colD, INPUT_PULLUP);
//
pinMode(ledPin, OUTPUT);
digitalWrite(ledPin, LOW); // turn LED off
}

void loop(){
if(noKey == 16){ // no keys were pressed
readKey = true; // keyboard is ready to accept a new keypress
}
noKey = 0;
for(rowCounter=row1; rowCounter<(row4 +1); rowCounter++){
scanRow(); // switch on one row at a time
for(columnCounter = colA; columnCounter <colD +1; columnCounter++){
readColumn(); // read the switch pressed
if (foundCol== true){
keyValue =(rowCounter-row1) +4*(columnCounter - colA);
}
}
}

if(readKey==true && noKey == 15){ // a key has been pressed
//Serial.println(keyValue); // used for debug
if (keyValue == 13){
//digitalWrite(ledPin, !digitalRead(ledPin)); // toggles LED ON/OFF
}
else{
//digitalWrite(ledPin, LOW);
}

if(readKey)
{
  lcd.clear();
lcd.print(keyValue+1);
}

/********************************************************
// call to part of the sketch that will use the key number
*/

//*******************************************************
readKey = false; // rest the flag
delay(debounce); // debounce
}
}
void scanRow(){
for(int j =row1; j < (row4 +1); j++){
digitalWrite(j, HIGH);
}
digitalWrite(rowCounter , LOW); // switch on one row
}
void readColumn(){
foundColumn = digitalRead(columnCounter);
if(foundColumn == 0){
foundCol = true;
}
else{
foundCol=false;
noKey=noKey +1; // counter for number of empty columns
}
}
