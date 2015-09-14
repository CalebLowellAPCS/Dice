import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

public void setup()
{
	size(520, 520);
	noLoop();
}

int rectx = 0;
int recty = 0;
int dots;

public void draw()
{
	background(0, 0, 0);


	for (int recty = 0; recty <= 500; recty += 40) {

		for (int rectx = 0; rectx <= 500; rectx += 40) {
			

			Die potato = new Die(rectx, recty);
			potato.roll();
			potato.show();
		}

	}
	noLoop();
}
public void mousePressed()
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

	public void roll()
	{
	
		dots = (int)(Math.random()*6 + 1);

	}

	public void show()
	{
		fill(0, 0, 0);

		rect(rectx, recty, 40, 40);

		fill(255, 215, 0);

		if (dots == 1){
		
			ellipse(rectx + 20, recty + 20, 5, 5);

		}
		if (dots == 2){
			ellipse(rectx + 10, recty + 10, 5, 5);
			ellipse(rectx + 30, recty + 30, 5, 5);

		}
		if (dots == 3){
			ellipse(rectx + 10, recty + 10, 5, 5);
			ellipse(rectx + 20, recty + 20, 5, 5);
			ellipse(rectx + 30, recty + 30, 5, 5);

		}
		if (dots == 4){
			ellipse(rectx + 10, recty + 10, 5, 5);
			ellipse(rectx + 10, recty + 30, 5, 5);
			ellipse(rectx + 30, recty + 10, 5, 5);
			ellipse(rectx + 30, recty + 30, 5, 5);


		}
		if (dots == 5){
			ellipse(rectx + 10, recty + 10, 5, 5);
			ellipse(rectx + 10, recty + 30, 5, 5);
			ellipse(rectx + 30, recty + 10, 5, 5);
			ellipse(rectx + 30, recty + 30, 5, 5);
			ellipse(rectx + 20, recty + 20, 5, 5);


		}
		if (dots == 6){
			ellipse(rectx + 10, recty + 10, 5, 5);
			ellipse(rectx + 10, recty + 30, 5, 5);
			ellipse(rectx + 30, recty + 10, 5, 5);
			ellipse(rectx + 30, recty + 30, 5, 5);
			ellipse(rectx + 10, recty + 20, 5, 5);
			ellipse(rectx + 30, recty + 20, 5, 5);
 
		}

	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
