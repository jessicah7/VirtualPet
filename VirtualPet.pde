void setup()
{
  size(500,500);
  background(240,255,240);
}

void draw()
{
  fill(240, 248, 255);
  rect(0,0, 500, 350);
  fill(254,237,233);
  //ears
  ellipse(190,90,50,50);
  ellipse(310,90,50,50);
  //legs
  triangle(215, 370, 180, 330, 200, 390);
  //triangle(
  //body
  ellipse(250,270,175,225);
  //head
  ellipse(250,150,150,150);
  ellipse(250,180,75,50);
  //eyes
  ellipse(275,130,20,20);
  ellipse(225,130,20,20);
  //nose 
  ellipse(240,180,10,15);
  ellipse(260,180,10,15);
}
