void setup()
{
  size(451,540);
  noLoop();
}
void draw()
{
  background(0);
  int sum = 0;
  for(int y = 0; y <= 450; y+=60)
  {
    for(int x = 0; x <= 450; x+=80)
    {
      Die square = new Die(x,y);
      square.roll();
      sum += square.dots;
      square.show();
    }
  }
  fill(255,255,255);
  textSize(20);
  text("Total # of dots: " + sum, 135, 500);
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dots;
  Die(int x, int y) //constructor
  {
    dots = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
void roll()
{
  dots = (int)(Math.random()*6)+1;
}
void show()
{
  fill(255,255,255);
  rect(myX,myY,50,50,7);
  fill(0,0,0);
  if(dots == 1){
    ellipse(myX+25,myY+25,10,10);
  }
  if(dots == 2){
    ellipse(myX+15,myY+15,10,10);
    ellipse(myX+35,myY+35,10,10);
  }
  if(dots == 3){
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+40,myY+40,10,10);
    ellipse(myX+25,myY+25,10,10);
  }
  if(dots == 4){
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+40,myY+40,10,10);
    ellipse(myX+40,myY+10,10,10);
    ellipse(myX+10,myY+40,10,10);
  }
  if(dots == 5){
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+40,myY+40,10,10);
    ellipse(myX+40,myY+10,10,10);
    ellipse(myX+10,myY+40,10,10);
    ellipse(myX+25,myY+25,10,10);
  }
  if(dots == 6){
    ellipse(myX+10,myY+10,10,10);
    ellipse(myX+40,myY+40,10,10);
    ellipse(myX+40,myY+10,10,10);
    ellipse(myX+10,myY+40,10,10);
    ellipse(myX+10,myY+25,10,10);
    ellipse(myX+40,myY+25,10,10);
  }
 }
}
