Button newGameButton;
Button rulesButton;

class Button{
  
//  declare variables used in the Button class here
  color cB;
  float xLocB;
  float yLocB;
  float xSizeB;
  float ySizeB;
  String nameB;
  int newGameButtonOver;
  int newGameButtonPressed;
  
//  Temporary variable assignment   
  Button(color tempcB, float tempxLocB, float tempyLocB, float tempxSizeB, float tempySizeB,String tempNameB){
    cB = tempcB;
    xLocB = tempxLocB;
    yLocB = tempyLocB;
    xSizeB = tempxSizeB;
    ySizeB = tempySizeB;
    nameB = tempNameB;
    
  }
//  The disp() method is used to draw the button and text to the screen  
  void disp(){
//  rectMode(CENTER);
    fill(cB);
    rect(xLocB, yLocB,xSizeB, ySizeB);
    strokeWeight (2); 
//  This is the drawing of the text with and reassignment of fill to the original value  
    fill(0);
    textSize(16);
    text(nameB, xLocB+(xSizeB/10), yLocB+(ySizeB/2));
    fill(0);
  }
//   The over() method returns either 1 to indicate mouse is over button or 0 to indicate mouse is outside of button 
  int over(){
    if(mouseX >= xLocB && mouseX <= xLocB + xSizeB && mouseY >= yLocB && mouseY <= yLocB + ySizeB){
      newGameButtonOver = 1;
      return newGameButtonOver;
    }else{
      newGameButtonOver = 0;
      return newGameButtonOver;
      }
  }
//  The press() method returns 1 to indicate button is pressed or 0 to indicate it is not pressed  
  int press(){
    if(newGameButtonOver == 1 && mousePressed == true){
      newGameButtonPressed = 1;
      return newGameButtonPressed;
    }else{
      newGameButtonPressed = 0;
      return newGameButtonPressed;
    }
  } 
void release(){
  newGameButtonOver = 0;
 newGameButtonPressed = 0;
}  
}
