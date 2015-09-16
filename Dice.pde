void setup()
{
  size(520, 550);
  noLoop();
}

int rectx = 0;
int recty = 0;
int dots;

int total = 0;

void draw()
{

  background(0, 0, 0);

  for (int recty = 0; recty <= 500; recty += 40) {

    for (int rectx = 0; rectx <= 500; rectx += 40) {

      Die potato = new Die(rectx, recty);
      
      potato.roll();
      potato.show();
      
    }

  }
  
  text("Total: " + (total), 260, 530);
  noLoop();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{

  Die(int x, int y) //constructor
  {
    rectx = x;
    recty = y;
  }

  void roll()
  {
  
    dots = (int)(Math.random()*6 + 1);

  }

  void show()
  {
    fill(0, 0, 0);

    rect(rectx, recty, 40, 40);

    fill(255, 215, 0);

    if (dots == 1){
      
      total++;
      ellipse(rectx + 20, recty + 20, 5, 5);

    }
    if (dots == 2){
      
      total += 2;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);

    }
    if (dots == 3){
      
      total += 3;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 20, recty + 20, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);

    }
    if (dots == 4){
      
      total += 4;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 10, recty + 30, 5, 5);
      ellipse(rectx + 30, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);


    }
    if (dots == 5){
      
      total += 5;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 10, recty + 30, 5, 5);
      ellipse(rectx + 30, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);
      ellipse(rectx + 20, recty + 20, 5, 5);


    }
    if (dots == 6){
      
      total += 6;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 10, recty + 30, 5, 5);
      ellipse(rectx + 30, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);
      ellipse(rectx + 10, recty + 20, 5, 5);
      ellipse(rectx + 30, recty + 20, 5, 5);
 
    }

  }
}
