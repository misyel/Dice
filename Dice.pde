boolean started;
boolean goal1;
boolean endGame;
int randomGoal;
int total = 0;


void setup()
{
  size(500, 570);
  noLoop();
}
void draw()
{
  if (started == false && endGame == false) {
    startt();
  }
  if (started == true && endGame == false) {
    moveDie();
    checkWin();
  }
  if (goal1 == true && endGame == true) {
    win();
  }
  //your code here
}
void startt() {
  endGame = false;
  started = false;
  background(104, 161, 206);
  textSize(100);
  text("Dice", 150, 90);
  textSize(30);
  text("Click to start!", 150, 550);
  noStroke();
  for (int x = 20; x < 500; x = x + 60) {
    for (int y = 120; y < 500; y=y+70) {
      Die dice2 = new Die(x, y);
      dice2.show();
    }
  }
  if (mousePressed == true ) {
    started = true;
    randomGoal = (int)(Math.random()*5);
  }
}
void moveDie() {
  goal1 = false;
  background(104, 161, 206);
  total = 0;
  //randomGoal = (int)(Math.random()*5);
  for (int x = 20; x < 500; x = x + 60) {
    for (int y = 20; y < 500; y=y+70) {
      Die dice = new Die(x, y);
      dice.show();
      total = total + dice.diceNum;
    }
  }
  
}

void checkWin(){ 
  if (randomGoal == 0) {
    if (total == 201) {
      goal1 = true;
      endGame = true;
      started = false;
    } else {
      textSize(30);
      text("Goal: 201", 300, 530);
      text(total + " dots!", 50, 530);
    }
  }
  if (randomGoal == 1) {
    if (total == 167) {
      goal1 = true;
      endGame = true;
      started = false;
    } else {
      textSize(30);
      text("Goal: 167", 300, 530);
      text(total + " dots!", 50, 530);
    }
  }
  if (randomGoal == 2) {
    if (total == 204) {
      goal1 = true;
      endGame = true;
      started = false;
    } else {
      textSize(30);
      text("Goal: 204", 300, 530);
      text(total + " dots!", 50, 530);
    }
  }
  if (randomGoal == 3) {
    if (total == 211) {
      goal1 = true;
      endGame = true;
      started = false;
    } else {
      textSize(30);
      text("Goal: 211", 300, 530);
      text(total + " dots!", 50, 530);
    }
  }
  if (randomGoal == 4) {
    if (total == 193) {
      goal1 = true;
      endGame = true;
      started = false;
    } else {
      textSize(30);
      text("Goal: 193", 300, 530);
      text(total + " dots!", 50, 530);
    }
  }
}

  void win() {
    background(104, 161, 206);
    textSize(70);
    text("You win!", 70, 250);
    textSize(30);
    text("Click to play again!",250,400);
    if (mousePressed == true){
      endGame = false;
      started = true;
  }  
  }

  void mousePressed()
  {
    redraw();
  }
  class Die //models one single dice cube
  {
    int myX, myY;
    int diceNum;
    int total;
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
      fill(255);
      noStroke();
      rect(myX, myY, 40, 40, 10);
      fill(0);
      if (diceNum == 1) {
        //fill(31,203,43);
        ellipse(myX+20, myY+20, 7, 7);
      } else if (diceNum == 2) {
        //fill(154,5,255);
        ellipse(myX+10, myY+20, 7, 7);
        ellipse(myX+30, myY+20, 7, 7);
      } else if (diceNum == 3) {
        //fill(255,5,210);
        ellipse(myX+10, myY+10, 7, 7);
        ellipse(myX+20, myY+20, 7, 7);
        ellipse(myX+30, myY+30, 7, 7);
      } else if (diceNum == 4) {
        //fill(252,159,18);
        ellipse(myX+10, myY+10, 7, 7);
        ellipse(myX+10, myY+30, 7, 7);
        ellipse(myX+30, myY+10, 7, 7);
        ellipse(myX+30, myY+30, 7, 7);
      } else if (diceNum == 5) {
        //fill(29,48,242);
        ellipse(myX+10, myY+10, 7, 7);
        ellipse(myX+10, myY+30, 7, 7);
        ellipse(myX+30, myY+10, 7, 7);
        ellipse(myX+30, myY+30, 7, 7);
        ellipse(myX+20, myY+20, 7, 7);
      }	
      else if (diceNum == 6) {
        //fill(0);
        ellipse(myX+10, myY+10, 7, 7);
        ellipse(myX+10, myY+30, 7, 7);
        ellipse(myX+30, myY+10, 7, 7);
        ellipse(myX+30, myY+30, 7, 7);
        ellipse(myX+10, myY+20, 7, 7);
        ellipse(myX+30, myY+20, 7, 7);
      }
      //your code here
    }
  }