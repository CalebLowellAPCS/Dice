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
	size(500, 500);
	noLoop();
}

int rectx = 0;
int recty = 0;
int dots;

public void draw()
{
	background(0, 0, 0);

	Die potato = new Die(rectx, recty);
	potato.roll();
	potato.show();

	for (int y = 0; y <= 500; y += 40) {

		for (int x = 0; x <= 500; x += 40) {
			
			rectx += 40;
		}

		recty += 40;
	}
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
		rect(x, y, 40, 40);

	}

	public void roll()
	{
	
		dots = (int)(Math.random()*6 + 1);

	}

	public void show()
	{
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
