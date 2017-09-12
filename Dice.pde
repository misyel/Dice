int myX,myY;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	for(int x = 50; x > 500; x = x + 30){
		for(int y = 50; y > 500; y=y+30){
			Die dice = new Die(x,y);
			dice.show();
		}
	}
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
		myX = x;
		myY = y;

		//variable initializations here
	}
	void roll()
	{
		if ((int)Math.random(6) == 0){
			ellipse(myX+25,dotY+25,10,10);
		}
		else if ((int)Math.random(6) == 1){
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,my+40,10,10);
		}
		else if ((int)Math.random(6) == 2){
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,my+40,10,10);
			ellipse(myX+15,myY+15,10,10);
		}
		else if ((int)Math.random(6) == 3){
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,my+40,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+15,10,10);
		}
		else if ((int)Math.random(6) == 4){
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,my+40,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,my+40,10,10);
		}
		else if ((int)Math.random(6) == 5){
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,my+40,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+40,my+40,10,10);
			ellipse(myX+15,myY+15,10,10);
		}
	


		//your code here
	}
	void show()
	{
		rect(myX,myY,50,50,10);
		roll();
		//your code here
	}
}
