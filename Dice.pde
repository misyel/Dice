int myX,myY;
int diceNum;
int total;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(0);
	for(int x = 20; x < 500; x = x + 60){
		for(int y = 20; y < 500; y=y+70){
			Die dice = new Die(x,y);
		}
		dice.show();
		total = total + dice.diceNum;
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
		total = 0;
		roll();

		//variable initializations here
	}
	void roll()
	{
		diceNum = (int)((Math.random()*6)+1);
		
	


		//your code here
	}
	void show()
	{
		rect(myX,myY,40,40,10);
		if (diceNum == 1){
			ellipse(myX+20,myY+20,7,7);
		}
		else if (diceNum == 2){
			ellipse(myX+10,myY+20,7,7);
			ellipse(myX+30,myY+20,7,7);
		}
		else if (diceNum == 3){
			ellipse(myX+10,myY+10,7,7);
			ellipse(myX+20,myY+20,7,7);
			ellipse(myX+30,myY+30,7,7);
		}
		else if (diceNum == 4){
			ellipse(myX+10,myY+10,7,7);
			ellipse(myX+10,myY+30,7,7);
			ellipse(myX+30,myY+10,7,7);
			ellipse(myX+30,myY+30,7,7);
		}
		else if (diceNum == 5){
			ellipse(myX+10,myY+10,7,7);
			ellipse(myX+10,myY+30,7,7);
			ellipse(myX+30,myY+10,7,7);
			ellipse(myX+30,myY+30,7,7);
			ellipse(myX+20,myY+20,7,7);	
			}	
		else if (diceNum == 6){
			ellipse(myX+10,myY+10,7,7);
			ellipse(myX+10,myY+30,7,7);
			ellipse(myX+30,myY+10,7,7);
			ellipse(myX+30,myY+30,7,7);
			ellipse(myX+10,myY+20,7,7);
			ellipse(myX+30,myY+20,7,7);
		}
		//your code here
	}
}
