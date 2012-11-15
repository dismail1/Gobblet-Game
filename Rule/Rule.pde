
void setup()
{
  size (800, 800);   // Size of board 
  background (255,236,202);
  newGameButton = new Button(color(255, 141, 0),650, 15, 100, 30, "New Game");

  rulesButton = new Button(color(255, 141, 0), 650, 55, 100 , 30, "Rules"); //button2

  reader = createReader("help.txt"); 

  bx1 = 700;
  by1 = 150;
  by2 = 250;
  by3 = 320;
  by4 = 365;
 
 
 lightBigCircle = new Circle(bx1, by1, BigCircleRadius);
 lightMeduimCircle = new Circle(bx1, by2, MeduimCircleRadius);
 lightSmallCircle = new Circle(bx1, by3, SmallCircleRadius);
 lightSmallerCircle = new Circle(bx1, by4, SmallerCircleRadius);
}

void draw()
{
  
   newGameButton.disp();
  rulesButton.disp();
//  buttonVariableName.over() this function determines if the users mouse is over the button
  newGameButton.over();
  rulesButton.over();
//  buttonVariableName.press() this function determines if the users mouse is over the button and a mouse button is pressed
  newGameButton.press();
  rulesButton.press();
  
   if(newGameButton.press() == 1){
  theBoard();   // Draw the board  
  fill (80, 0, 0);
  newGameButton.release();
  
  lightBigCircle.move(); 
  lightMeduimCircle.move();
  lightSmallCircle.move();
  lightSmallerCircle.move();
  
  lightBigCircle.release(); 
  lightMeduimCircle.release();
  lightSmallCircle.release();
  lightSmallerCircle.release();
  
  lightBigCircle.display(255, 200, 133);
  lightMeduimCircle.display(255, 200, 133);
  lightSmallCircle.display(255, 200, 133);
  lightSmallerCircle.display(255, 200, 133); 
   }
  if(rulesButton.press() == 1){
    reading();
  }
}
