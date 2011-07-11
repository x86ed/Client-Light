/*
  This code is used to test the pins for the client light.
  It first Cycles through the colors,
  Then it fades the colors
  ,and then moves forward and reverse
 */
int testDelay = 500; //number of miliseconds to blink each light
int fadeStep = 10;
void setup() {                
  pinMode(3, OUTPUT);//red
  pinMode(5, OUTPUT);//green
  pinMode(6, OUTPUT);//blue
  pinMode(7, OUTPUT);//forward
  pinMode(8, OUTPUT);//reverse
}

void testPin(int pinNo, boolean crossfade = false){
  if(crossfade){
    for(int i = 255; i > -1; i--){
      analogWrite(pinNo, 255 - i);
      delay(fadeStep);
    }
    digitalWrite(pinNo, LOW);
  }else{
    digitalWrite(pinNo, HIGH);
    delay(testDelay);              
    digitalWrite(pinNo, LOW);
    delay(testDelay);
  }
}

void loop() {
  
   //Toggle tricolor led
   testPin(3);//red 
   testPin(5);//green
   testPin(6);//blue
   
   //Test Movement
   testPin(7);//forward(green)
   testPin(8);//reverse(red)

   //test fade tricolor states
   testPin(3,true);//red
   testPin(5,true);//green
   testPin(6,true);//red 
  
  //wait test delay amount
  delay(testDelay); 
}
