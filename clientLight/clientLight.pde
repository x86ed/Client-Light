

void setup(){
  //Light Pins
  pinMode(3, OUTPUT);//red
  pinMode(5, OUTPUT);//green
  pinMode(6, OUTPUT);//blue
  
  //Motor Pins
  pinMode(7, OUTPUT);//forward
  pinMode(8, OUTPUT);//reverse
  
}


void setLightColor(int Red, int Grn, int Blu){
  analogWrite(3, Red);
  analogWrite(5, Grn);
  analogWrite(6, Blu);  
}

void loop() {
  setLightColor(0,0,0);
}
