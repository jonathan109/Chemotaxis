Bacteria[] bunchOfBobs = new Bacteria[10];
void setup()   
{     
  frameRate(1000);
  size(500, 500);
  for (int i = 0; i < bunchOfBobs.length; i ++ )
  {
    bunchOfBobs[i] = new Bacteria(250,250);
  }
}   
void draw()   
{    
  for (int i = 0; i < bunchOfBobs.length; i++)
  {
    bunchOfBobs[i].show();
    bunchOfBobs[i].walk();
  }
}
void mousePressed()
{
  background((int)(Math.random()*255)+1);
}
class Bacteria    
{     
  int myX, myY, myR, myG, myB;
  Bacteria(int x, int y)
  {
    myX = x;
    myY = y;
    myR = ((int)(Math.random()*255)+1);
    myG = ((int)(Math.random()*255)+1);
    myB = ((int)(Math.random()*255)+1);
  }  
  void walk()
  {
    myX = myX + (int)(Math.random()*15)-7;
    myY = myY + (int)(Math.random()*15)-7;
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*15)-5;
    else
      myX = myX + (int)(Math.random()*15)-9;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*15)-5;
    else
      myY = myY + (int)(Math.random()*15)-9;
  }
  void show()
  {
    fill(myR,myG,myB);
    ellipse(myX, myY, 10, 10);
  }
}    