#include <LiquidCrystal.h>

LiquidCrystal lcd(4, 3,2, 5,6,7,8);

float rawtemp=0;

float temp=0;
float setpoint=135;

const float tempSlope=0.27;
const float Intercept=-6.94;

void setup()
{
  
  lcd.begin(40,2);
  
  
}

void loop() {



rawtemp = analogRead(0);

temp= rawtemp*tempSlope + Intercept;
  
lcd.clear();
  
lcd.setCursor(0,0);
lcd.print("t:");
lcd.print(temp);

lcd.setCursor(0,1);
lcd.print(" r:");
lcd.print(rawtemp);

delay(1000);



}

