import cc.arduino.*;

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup()
{
  size(500,500);
  background(240,255,240);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}

void mouseClicked() {
  System.out.println(mouseX);
  System.out.println(mouseY);
}

public void draw() {
  
  int y = arduino.analogRead(5);
  System.out.println(y);
  
  noStroke();
  
  //sky
  fill(240, 248, 255);
  noStroke();
  rect(0,0, 500, 350);
  
  //clouds
  fill(255,255,255);
  ellipse(401, 74, 100, 80);
  ellipse(369, 43, 50, 50);
  ellipse(410, 35, 60, 60);
  ellipse(447, 63, 50, 50);
  ellipse(353, 84, 50, 50);
  ellipse(390, 105, 50, 50);
  ellipse(429, 100, 50, 50);
  
  ellipse(77, 100, 100, 80);
  ellipse(65, 66, 50, 50);
  ellipse(105, 69, 50, 50);
  ellipse(126, 91, 50, 50);
  ellipse(97, 125, 50, 50);
  ellipse(60, 135, 50, 50);
  ellipse(28, 100, 50, 50);
  
  fill(254,237,233);
  stroke(0.5);
  
  //ears
  ellipse(190,90,50,50);
  ellipse(310,90,50,50);
  //legs
  triangle(186, 348, 214, 372, 200, 390);
  triangle(213, 372, 227, 394, 236, 382);
  triangle(314, 347, 285, 372, 308, 390);
  triangle(285, 372, 276, 394, 264, 381);
  //body
  ellipse(250,270,175,225);
  //head
  ellipse(250,150,150,150);
  ellipse(250,180,75,50);
  //eyes
  fill(0,0,0);
  ellipse(275,130,15,20);
  ellipse(225,130,15,20);
  fill(255,255,255);
  ellipse(273,127,10,10);
  ellipse(223,127,10,10);
  //nose 
  ellipse(240,180,10,15);
  ellipse(260,180,10,15);
  
  //hands
  fill(254,237,233);
  ellipse(188, 273, 50, 60);
  ellipse(311, 275, 50, 60);
  
  //mad
  
  if (y > 0 && y <= 120) {
    noStroke();
    fill(250, 250, 250);
    ellipse(250, 205, y/4+75, y/4+35);
    ellipse(260, 245, y/4+55, y/4+55);
    ellipse(275, 215, y/4+55, y/4+55);
    ellipse(220, 225, y/4+55, y/4+55);
    
    stroke(0.5);
    fill(254-y/6,237-y,233-y);
    //ears
    ellipse(190,90,50,50);
    ellipse(310,90,50,50);
    //legs
    triangle(186, 348, 214, 372, 200, 390);
    triangle(213, 372, 227, 394, 236, 382);
    triangle(314, 347, 285, 372, 308, 390);
    triangle(285, 372, 276, 394, 264, 381);
    //body
    ellipse(250,270,175,225);
  
    
    //head
    ellipse(250,150,150,150);
    ellipse(250,180,75,50);
      
      
    //hands
    ellipse(188, 273, 50, 60);
    ellipse(311, 275, 50, 60);
    //eyes
    fill(0,0,0);
    ellipse(275,130,15,20);
    ellipse(225,130,15,20);
    fill(255,255,255);
    ellipse(273,127,10,10);
    ellipse(223,127,10,10);
    //nose 
    ellipse(240,180,10,15);
    ellipse(260,180,10,15);
      
    //eyes
    fill(0,0,0);
    ellipse(275,130,15,20+y/6);
    ellipse(225,130,15,20+y/6);
    fill(255,255,255);
    ellipse(273,127,10,10+y/6);
    ellipse(223,127,10,10+y/6);
    
    noStroke();
    fill(250, 250, 250);
    ellipse(250, 205, y/6+75, y/6+35);
    ellipse(260, 245, y/6+55, y/6+55);
    ellipse(275, 215, y/6+55, y/6+55);
    ellipse(220, 225, y/6+55, y/6+55);
    
  }
}
