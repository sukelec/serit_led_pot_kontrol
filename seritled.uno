int kirmizi=3;
int yesil=5;
int mavi=6;

void setup() {
  Serial.begin(9600); 
  pinMode(kirmizi,OUTPUT);
  pinMode(yesil,OUTPUT);
  pinMode(mavi,OUTPUT);
 
}

void loop() {
  int pot1=analogRead(A0);
  int pot2=analogRead(A1);
  int pot3=analogRead(A2);

  int pot12=map(pot1,0,1024,0,255);
  int pot22=map(pot2,0,1024,0,255);
  int pot32=map(pot3,0,1024,0,255);
  
  analogWrite(kirmizi,pot12);
  analogWrite(yesil,pot22);
  analogWrite(mavi,pot32);
  }
