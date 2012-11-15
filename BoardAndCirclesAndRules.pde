float bx, by;                                                         // Position of the circles
int bigCircle = 100;                                                  // Size of large circles
int mediumCircle = 75;                                                // Size of medium circles
int smallCircle = 50;                                                 // Size of small circles
int smallestCircle = 25;                                              // Size of smallest circles
boolean overBox = false;                                              // Check to see it mouse is pressed
boolean locked = false;
float xOffset = 0.0;
float yOffset = 0.0;
Button rulesButton;                                                   // See class definition for "Button"
String[] line;                                                        // Used in the help file function

void setup()                                                          // Set up the display
{
  size (800, 600);                                                    //   - Size of board
  rulesButton = new Button (674, 4, 60, 20);                          //   - See class definition for "Button"
  bx = 700;                                                           //   - Starting x-coordinate of black large circle
  by = 100;                                                           //   - Starting y-coordinate of black large circle
}

void draw()                                                            // Draw the board, circles and buttons
{
  rulesButton.over();                                                  //   - Determine if mouse is over the button
  rulesButton.press();                                                 //   - Determine if button was pressed
  
  theBoard();                                                          //   - Draw the board  
  fill (0, 0, 0);                                                      //   - Fill color = black
  ellipse (bx, by, bigCircle, bigCircle);                              //   - Draw the circles
  if (mouseX > bx-bigCircle && mouseX < bx+bigCircle &&                //   - Test if the cursor is over the box
      mouseY > by-bigCircle && mouseY < by+bigCircle) {
    overBox = true;
  }

  if (rulesButton.over() == 1) {                                       //   - Placeholder
  }

  if (rulesButton.press() == 1) {                                      //   - Read the rules
    reading();
  }
}

void mousePressed() {                                                  // FUNCTION: Action if mouse is pressed
  if (overBox) {
    locked = true;
    fill (80, 0, 0);
  }
  else {
    locked = false;
  }
  xOffset = mouseX - bx;
  yOffset = mouseY - by;
}

void mouseDragged() {                                                  // FUNCTION: Action if mouse is dragged
  if (locked) {
    bx = mouseX - xOffset;
    by = mouseY - yOffset;
  }
}

void mouseReleased() {                                                 // FUNCTION: Action if mouse is released
  locked = false;
}

void theBoard() {                                                      // FUNCTION: Draw the board
  background (124, 48, 4);                                             //   - Background color = dark orange
  fill (255, 141, 0);                                                  //   - Semicircle color = gold
  strokeWeight (4);                                                    //   - Line weight

  int a = 30;                                                          //   - Width of each semicircle
  int b = 150;                                                         //   - Height of each semicircle
  for (int i = 0; i < b * 4; i = i + b) {
    for (int j = 0; j < b * 4; j = j + b) {
      ellipse (0 + i, 74 + j, a, b);                                   //   - Circles and semicircles
      ellipse (74 + i, 0 + j, b, a);
      ellipse (149 + i, 74 + j, a, b);
      ellipse (74 + i, 149 + j, b, a);
      line (0 + i, 0 + j, 149 + i, 0 + j);                             //   - Outline
      line (149 + i, 0 + j, 149 + i, 149 + j);
      line (149 + i, 149 + j, 0 + i, 149 + j);
      line (0 + i, 149 + j, 0 + i, 0 + j);
    }
  }
  fill (125, 125, 125);                                                //   - Sideline
  rect (600, 0, 199, 599);
  
  fill (8, 88, 255);                                                   //   - Draw the button
  strokeJoin (ROUND);
  rect (674, 4, 60, 20);
  fill (0);
  textSize (14);
  text ("Rules", 686, 20);
}

void reading() {                                                       // FUNCTION: Display help file
  background (125, 125, 125);
  textSize (16);
  String[] lines = loadStrings ("help.txt");
  for (int i = 0; i < lines.length; i++) {
    text (lines[i], 100, 50 + (i * 30));
  }
}

class Button {                                                         // CLASS: Button
  float xLocB;                                                         //   - x-coordinate
  float yLocB;                                                         //   - y-coordinate
  float xSizeB;                                                        //   - Button width
  float ySizeB;                                                        //   - Button height
  int myButtonOver;                                                    //   - Determine if mouse is over the button
  int myButtonPressed;                                                 //   - Determine if button is pressed

  Button (float xLocB0, float yLocB0, float xSizeB0, float ySizeB0) {  //   - Define buttons
    xLocB = xLocB0;
    yLocB = yLocB0;
    xSizeB = xSizeB0;
    ySizeB = ySizeB0;
  }

  int over() {                                                         //   - Returns 1 if mouse is over button, o.w. returns 0
    if (mouseX >= xLocB && mouseX <= (xLocB + xSizeB) &&
        mouseY >= yLocB && mouseY <= (yLocB + ySizeB)) {
      myButtonOver = 1;
    }
    else {
      myButtonOver = 0;
    }
    return myButtonOver;
  }

  int press() {                                                        //   - Returns 1 if button is pressed, o.w. returns 0
    if (myButtonOver == 1 && mousePressed) {
      myButtonPressed = 1;
    } else {
      myButtonPressed = 0;
    }
    return myButtonPressed;
  }
}
