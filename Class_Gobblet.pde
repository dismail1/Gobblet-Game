// CLASS: Gobblet
class Gobblet {
  String id;                                                 // Gobblet ID
  float xPos;                                                // x-coordinate 
  float yPos;                                                // y-coordinate
  boolean mouseOver;                                         // = true if mouse is over the Gobblet
  boolean mouseLock;                                         // ???????????
  int sizeG;                                                 // Gobblet size
  String colorG;                                             // B(lack) or W(hite)
  
  Gobblet (String thisID, float thisXPos, float thisYPos,
           boolean thisMouseOver, boolean thisMouseLock,
           int thisSize, String thisColor) {
    id = thisID;
    xPos = thisXPos;
    yPos = thisYPos;
    mouseOver = thisMouseOver;
    mouseLock = thisMouseLock;
    sizeG = thisSize;
    colorG = thisColor;
  }
  
  // *** Getters ***
  String getID() {                                           // Return gobblet ID
    return id;
  }
  
  float getXPos() {                                          // Return x-coordinate
    return xPos;
  }
  
  float getYPos() {                                          // Return y-coordinate
    return yPos;
  }
  
  boolean getMouseOver() {                                   // Return mouseOver
    return mouseOver;
  }
  
  boolean getMouseLock() {                                   // Return mouseLock
    return mouseLock;
  }
  
  int getSize() {                                            // Return size
    return sizeG;
  }
  
  String getColorG() {                                       // Return color (0 = black, 1 = white)
    return colorG;
  }
  
  // *** Setters ***
  void setMouseOver(boolean thisMouseOver) {                 // Turn on mouseOver
    mouseOver = thisMouseOver;
  }
  
  void setMouseLock(boolean thisMouseLock) {                 // Turn on mouseLock
    mouseLock = thisMouseLock;
  }
  
  void setXandY(float thisXPos, float thisYPos) {            // Set x- and y-coordinates
    xPos = thisXPos;
    yPos = thisYPos;
  }
  
  void centerCell(float thisXPos, float thisYPos) {          // Set the gobblet in center of the cell
  
    if ((thisXPos <= 150) && (thisYPos <= 150)) {
      xPos = 75;
      yPos = 75;
    } else if ((thisXPos <= 150) && (thisYPos <= 300)) {
      xPos = 75;
      yPos = 225;
    } else if ((thisXPos <= 150) && (thisYPos <= 450)) {
      xPos = 75;
      yPos = 375;
    } else if ((thisXPos <= 150) && (thisYPos <= 700)) {
      xPos = 75;
      yPos = 525;
    } else if ((thisXPos <= 300) && (thisYPos <= 150)) {
      xPos = 225;
      yPos = 75;
    } else if ((thisXPos <= 450) && (thisYPos <= 150)) {
      xPos = 375;
      yPos = 75;
    } else if ((thisXPos <= 600) && (thisYPos <= 150)) {
      xPos = 525;
      yPos = 75;
    } else if ((thisXPos <= 300) && (thisYPos <= 300)) {
      xPos = 225;
      yPos = 225;
    } else if ((thisXPos <= 300) && (thisYPos <= 450)) {
      xPos = 225;
      yPos = 375;
    } else if ((thisXPos <= 300) && (thisYPos <= 600)) {
      xPos = 225;
      yPos = 525;
    } else if ((thisXPos <= 450) && (thisYPos <= 300)) {
      xPos = 375;
      yPos = 225;
    } else if ((thisXPos <= 600) && (thisYPos <= 300)) {
      xPos = 525;
      yPos = 225;
    } else if ((thisXPos <= 450) && (thisYPos <= 450)) {
      xPos = 375;
      yPos = 375;
    } else if ((thisXPos <= 450) && (thisYPos <= 600)) {
      xPos = 375;
      yPos = 525;
    } else if ((thisXPos <= 600) && (thisYPos <= 450)) {
      xPos = 525;
      yPos = 375;
    } else if ((thisXPos <= 600) && (thisYPos <= 600)) {
      xPos = 525;
      yPos = 525;
    }
  }
}
