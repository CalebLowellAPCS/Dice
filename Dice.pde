void setup()
{
	size(520, 520);
	noLoop();
}

int rectx = 0;
int recty = 0;
int dots;

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
		rect(rectx, recty, 40, 40);

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
