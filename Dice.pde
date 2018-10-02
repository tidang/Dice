
int t = 0;

void setup()
{
    noLoop();
    size(350, 350);
   background(125, 125, 125);
}
void draw()
{
  background(125, 125, 125);
  for (int y = 50; y <= 250; y+=100){
     for (int x = 50; x <= 250; x+=100){
        Die one = new Die(x, y);
        one.show();
        one.roll();
        
  
     }
  }
  fill(0, 0, 0);
   textSize(25);
  text("Total sum is: " + t, 25, 340);
 
}
void mousePressed()
{
     
    redraw();
     t = 0;
  
   
}
class Die
{
  int diceRoll, myX, myY;
  Die(int x, int y)
  {
   diceRoll = (int) (Math.random() * 6 + 1);
   myX = x;
   myY = y;
  }
    void roll()
    {
  
    
    if (diceRoll == 1){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 25, myY + 25, 10, 10);
      t = t + 1;
  

      
    }
      if (diceRoll == 2){
        fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
      t = t + 2;
 
   
    }
    if (diceRoll == 3){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 10, myY + 15, 10, 10);
      ellipse(myX + 40, myY + 35, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      t = t + 3;
     
   
    }
    if (diceRoll == 4){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      t = t + 4;
    

    }
     if (diceRoll == 5){
       fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      t = t + 5;
      

    }
    if (diceRoll == 6){
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      t = 6 + t;
      
     
       }
        
    }

    void show()
    {
    
    fill(255, 255, 255);
    rect(myX, myY, 50, 50, 10);
   
    
  }
}
