void setup()
{
	size(500, 500);
	noLoop();
}
void draw()
{
	background(0, 0, 0);

	Die potato = new Die(150, 150);

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
		rect(x, y, 50, 50);

	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
