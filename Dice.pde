void setup()
{
  size(520, 550);
  noLoop();
}

int rectx = 0;
int recty = 0;
int dots;
float total1 = 0;
float total2 = 0;
float total3 = 0;
float total4 = 0;
float total5 = 0;
float total6 = 0;



void draw()
{
  background(0, 0, 0);
  total1 = 0;
  total2 = 0;
  total3 = 0;
  total4 = 0;
  total5 = 0;
  total6 = 0;


  for (int recty = 0; recty <= 500; recty += 40) {

    for (int rectx = 0; rectx <= 500; rectx += 40) {

      Die potato = new Die(rectx, recty);
      
      potato.roll();
      potato.show();
      
    }

  }
  
  text("Total: "+ (int)((total1 * 1) + (total2 * 2) + (total3 * 3) + (total4 * 4) + (total5 * 5) + (total6 * 6)), 260, 530);
  noLoop();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  Die(int x, int y) //constructor
  {
    roll();
    show();
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
      
      total1++;
      ellipse(rectx + 20, recty + 20, 5, 5);

    }
    if (dots == 2){
      
      total2++;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);

    }
    if (dots == 3){
      
      total3++;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 20, recty + 20, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);

    }
    if (dots == 4){
      
      total4++;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 10, recty + 30, 5, 5);
      ellipse(rectx + 30, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);


    }
    if (dots == 5){
      
      total5++;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 10, recty + 30, 5, 5);
      ellipse(rectx + 30, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);
      ellipse(rectx + 20, recty + 20, 5, 5);


    }
    if (dots == 6){
      
      total6++;
      ellipse(rectx + 10, recty + 10, 5, 5);
      ellipse(rectx + 10, recty + 30, 5, 5);
      ellipse(rectx + 30, recty + 10, 5, 5);
      ellipse(rectx + 30, recty + 30, 5, 5);
      ellipse(rectx + 10, recty + 20, 5, 5);
      ellipse(rectx + 30, recty + 20, 5, 5);
 
    }

  }
}
