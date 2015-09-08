
int rectx = 230;
int recty = 230;

void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	background(0, 0, 0);

	Die potato = new Die(rectx, recty);
	potato.show();


	//your code here
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
		rect(x, y, 40, 40);

	}
	void roll()
	{
		//your code here
	}
	void show()
	{

		int dots = (int)(Math.random()*6 + 1);

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
