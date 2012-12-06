import processing.core.*; 
import processing.data.*; 
import processing.opengl.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class Gobblet_Game extends PApplet {

String[] line;                                                         // Used in the help file function
Boolean blackWins, whiteWins;                                          // Winner indicator
String[][] checkBoard = {{"0","0","0","0"},                            // Board cells
                         {"0","0","0","0"},
                         {"0","0","0","0"},
                         {"0","0","0","0"}};
String[][] pos = {{"0","0","0","0"},                                   // Used to check if there's a winner
                  {"0","0","0","0"},
                  {"0","0","0","0"},
                  {"0","0","0","0"}};
float preXPos =0;                                                      // Used to store the previose X position of the gobblets
float preYPos =0;                                                      // Used to store the previose Y position of the gobblets
Boolean turn= true;
                 

// Big gobblets
Gobblet BB1 = new Gobblet ("BB1", 655,  89, false, false, 90, "B");    // Black Big #1 (ID, xPos, yPos, colorG, mouseOver, mouseLock, size)
Gobblet BB2 = new Gobblet ("BB2", 755,  89, false, false, 90, "B");    // Black Big #2
Gobblet BB3 = new Gobblet ("BB3", 855,  89, false, false, 90, "B");    // Black Big #3

Gobblet BW1 = new Gobblet ("WB1", 655, 389, false, false, 90, "W");    // White Big #1
Gobblet BW2 = new Gobblet ("WB2", 755, 389, false, false, 90, "W");    // White Big #2
Gobblet BW3 = new Gobblet ("WB3", 855, 389, false, false, 90, "W");    // White Big #3

// Medium gobblets
Gobblet MB1 = new Gobblet ("BM1", 655, 174, false, false, 65, "B");    // Black Medium #1
Gobblet MB2 = new Gobblet ("BM2", 755, 174, false, false, 65, "B");    // Black Medium #2
Gobblet MB3 = new Gobblet ("BM3", 855, 174, false, false, 65, "B");    // Black Medium #3

Gobblet MW1 = new Gobblet ("WM1", 655, 474, false, false, 65, "W");    // White Medium #1
Gobblet MW2 = new Gobblet ("WM2", 755, 474, false, false, 65, "W");    // White Medium #2
Gobblet MW3 = new Gobblet ("WM3", 855, 474, false, false, 65, "W");    // White Medium #3

// Small gobblets
Gobblet SB1 = new Gobblet ("BS1", 655, 234, false, false, 40, "B");    // Black Small #1
Gobblet SB2 = new Gobblet ("BS2", 755, 234, false, false, 40, "B");    // Black Small #2
Gobblet SB3 = new Gobblet ("BS3", 855, 234, false, false, 40, "B");    // Black Small #3

Gobblet SW1 = new Gobblet ("WS1", 655, 534, false, false, 40, "W");    // White Small #1
Gobblet SW2 = new Gobblet ("WS2", 755, 534, false, false, 40, "W");    // White Small #2
Gobblet SW3 = new Gobblet ("WS3", 855, 534, false, false, 40, "W");    // White Small #3

// Mini gobblets
Gobblet NB1 = new Gobblet ("BN1", 655, 269, false, false, 15, "B");    // Black Mini #1
Gobblet NB2 = new Gobblet ("BN2", 755, 269, false, false, 15, "B");    // Black Mini #2
Gobblet NB3 = new Gobblet ("BN3", 855, 269, false, false, 15, "B");    // Black Mini #3

Gobblet NW1 = new Gobblet ("WN1", 655, 569, false, false, 15, "W");    // White Mini #1
Gobblet NW2 = new Gobblet ("WN2", 755, 569, false, false, 15, "W");    // White Mini #2
Gobblet NW3 = new Gobblet ("WN3", 855, 569, false, false, 15, "W");    // White Mini #3

public void setup()                                                           // Set up the display
{
  size (1280, 600);                                                    // Size of board
  blackWins = false;
  whiteWins = false;
  
}
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
  public String getID() {                                           // Return gobblet ID
    return id;
  }
  
  public float getXPos() {                                          // Return x-coordinate
    return xPos;
  }
  
  public float getYPos() {                                          // Return y-coordinate
    return yPos;
  }
  
  public boolean getMouseOver() {                                   // Return mouseOver
    return mouseOver;
  }
  
  public boolean getMouseLock() {                                   // Return mouseLock
    return mouseLock;
  }
  
  public int getSize() {                                            // Return size
    return sizeG;
  }
  
  public String getColorG() {                                       // Return color (0 = black, 1 = white)
    return colorG;
  }
  
  // *** Setters ***
  public void setMouseOver(boolean thisMouseOver) {                 // Turn on mouseOver
    mouseOver = thisMouseOver;
  }
  
  public void setMouseLock(boolean thisMouseLock) {                 // Turn on mouseLock
    mouseLock = thisMouseLock;
  }
  
  public void setXandY(float thisXPos, float thisYPos) {            // Set x- and y-coordinates
    xPos = thisXPos;
    yPos = thisYPos;
  }
  
  public void centerCell(float thisXPos, float thisYPos) {          // Set the gobblet in center of the cell
  
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
public void draw()
{
 

  // Draw the board
  theBoard();
  
  // Calculate the distance between the mouse position and the center of each gobblet
  float BB1dist = calcDistance(BB1.getXPos(), mouseX, BB1.getYPos(), mouseY);
  float BB2dist = calcDistance(BB2.getXPos(), mouseX, BB2.getYPos(), mouseY);
  float BB3dist = calcDistance(BB3.getXPos(), mouseX, BB3.getYPos(), mouseY);

  float MB1dist = calcDistance(MB1.getXPos(), mouseX, MB1.getYPos(), mouseY);
  float MB2dist = calcDistance(MB2.getXPos(), mouseX, MB2.getYPos(), mouseY);
  float MB3dist = calcDistance(MB3.getXPos(), mouseX, MB3.getYPos(), mouseY);

  float SB1dist = calcDistance(SB1.getXPos(), mouseX, SB1.getYPos(), mouseY);
  float SB2dist = calcDistance(SB2.getXPos(), mouseX, SB2.getYPos(), mouseY);
  float SB3dist = calcDistance(SB3.getXPos(), mouseX, SB3.getYPos(), mouseY);

  float NB1dist = calcDistance(NB1.getXPos(), mouseX, NB1.getYPos(), mouseY);
  float NB2dist = calcDistance(NB2.getXPos(), mouseX, NB2.getYPos(), mouseY);
  float NB3dist = calcDistance(NB3.getXPos(), mouseX, NB3.getYPos(), mouseY);

  float BW1dist = calcDistance(BW1.getXPos(), mouseX, BW1.getYPos(), mouseY);
  float BW2dist = calcDistance(BW2.getXPos(), mouseX, BW2.getYPos(), mouseY);
  float BW3dist = calcDistance(BW3.getXPos(), mouseX, BW3.getYPos(), mouseY);

  float MW1dist = calcDistance(MW1.getXPos(), mouseX, MW1.getYPos(), mouseY);
  float MW2dist = calcDistance(MW2.getXPos(), mouseX, MW2.getYPos(), mouseY);
  float MW3dist = calcDistance(MW3.getXPos(), mouseX, MW3.getYPos(), mouseY);

  float SW1dist = calcDistance(SW1.getXPos(), mouseX, SW1.getYPos(), mouseY);
  float SW2dist = calcDistance(SW2.getXPos(), mouseX, SW2.getYPos(), mouseY);
  float SW3dist = calcDistance(SW3.getXPos(), mouseX, SW3.getYPos(), mouseY);

  float NW1dist = calcDistance(NW1.getXPos(), mouseX, NW1.getYPos(), mouseY);
  float NW2dist = calcDistance(NW2.getXPos(), mouseX, NW2.getYPos(), mouseY);
  float NW3dist = calcDistance(NW3.getXPos(), mouseX, NW3.getYPos(), mouseY);

  // Reset mouseOver
  notMouseOver();

  // Determine where the mouse is
  float minDist = BB1dist;
  BB1.setMouseOver(true);
  
  if (BB2dist < minDist) {
    minDist = BB2dist;
    notMouseOver();
    BB2.setMouseOver(true);
  }
  if (BB3dist < minDist) {
    minDist = BB3dist;
    notMouseOver();
    BB3.setMouseOver(true);
  }
  if (BW1dist < minDist) {
    minDist = BW1dist;
    notMouseOver();
    BW1.setMouseOver(true);
  }
  if (BW2dist < minDist) {
    minDist = BW2dist;
    notMouseOver();
    BW2.setMouseOver(true);
  }
  if (BW3dist < minDist) {
    minDist = BW3dist;
    notMouseOver();
    BW3.setMouseOver(true);
  }
  if (MB1dist < minDist) {
    minDist = MB1dist;
    notMouseOver();
    MB1.setMouseOver(true);
  }
  if (MB2dist < minDist) {
    minDist = MB2dist;
    notMouseOver();
    MB2.setMouseOver(true);
  }
  if (MB3dist < minDist) {
    minDist = MB3dist;
    notMouseOver();
    MB3.setMouseOver(true);
  }
  if (MW1dist < minDist) {
    minDist = MW1dist;
    notMouseOver();
    MW1.setMouseOver(true);
  }
  if (MW2dist < minDist) {
    minDist = MW2dist;
    notMouseOver();
    MW2.setMouseOver(true);
  }
  if (MW3dist < minDist) {
    minDist = MW3dist;
    notMouseOver();
    MW3.setMouseOver(true);
  }
  if (SB1dist < minDist) {
    minDist = SB1dist;
    notMouseOver();
    SB1.setMouseOver(true);
  }
  if (SB2dist < minDist) {
    minDist = SB2dist;
    notMouseOver();
    SB2.setMouseOver(true);
  }
  if (SB3dist < minDist) {
    minDist = SB3dist;
    notMouseOver();
    SB3.setMouseOver(true);
  }
  if (SW1dist < minDist) {
    minDist = SW1dist;
    notMouseOver();
    SW1.setMouseOver(true);
  }
  if (SW2dist < minDist) {
    minDist = SW2dist;
    notMouseOver();
    SW2.setMouseOver(true);
  }
  if (SW3dist < minDist) {
    minDist = SW3dist;
    notMouseOver();
    SW3.setMouseOver(true);
  }
  if (NB1dist < minDist) {
    minDist = NB1dist;
    notMouseOver();
    NB1.setMouseOver(true);
  }
  if (NB2dist < minDist) {
    minDist = NB2dist;
    notMouseOver();
    NB2.setMouseOver(true);
  }
  if (NB3dist < minDist) {
    minDist = NB3dist;
    notMouseOver();
    NB3.setMouseOver(true);
  }
  if (NW1dist < minDist) {
    minDist = NW1dist;
    notMouseOver();
    NW1.setMouseOver(true);
  }
  if (NW2dist < minDist) {
    minDist = NW2dist;
    notMouseOver();
    NW2.setMouseOver(true);
  }
  if (NW3dist < minDist) {
    minDist = NW3dist;
    notMouseOver();
    NW3.setMouseOver(true);
  }
  
  // Draw the gobblets
  drawGobblets();
  
 // Check to see if there's a winner
  if (blackWins || whiteWins) {
    fill (255, 141, 0);
    rect (155, 250, 290, 70);
    textSize (48);
    fill (255, 255, 255);
    if (blackWins && whiteWins)
      text ("settlement!", 170, 300);
      else{ if (blackWins) { 
      text ("Black wins!", 170, 300);
    } else {
      text ("White wins!", 167, 300);
    }
  }
  }
                                             //   - Read the rules
    reading();
}
// FUNCTION: Determine whether the game has been won 
public void checkWinner() {

  // Check black
  if ((pos[0][0] == "B" && pos[0][1] == "B" && pos[0][2] == "B" && pos[0][3] == "B") ||       // Horizontal
      (pos[1][0] == "B" && pos[1][1] == "B" && pos[1][2] == "B" && pos[1][3] == "B") ||
      (pos[2][0] == "B" && pos[2][1] == "B" && pos[2][2] == "B" && pos[2][3] == "B") ||
      (pos[3][0] == "B" && pos[3][1] == "B" && pos[3][2] == "B" && pos[3][3] == "B") ||
      
      (pos[0][0] == "B" && pos[1][0] == "B" && pos[2][0] == "B" && pos[3][0] == "B") ||       // Vertical
      (pos[0][1] == "B" && pos[1][1] == "B" && pos[2][1] == "B" && pos[3][1] == "B") ||
      (pos[0][2] == "B" && pos[1][2] == "B" && pos[2][2] == "B" && pos[3][2] == "B") ||
      (pos[0][3] == "B" && pos[1][3] == "B" && pos[2][3] == "B" && pos[3][3] == "B") ||
      
      (pos[0][0] == "B" && pos[1][1] == "B" && pos[2][2] == "B" && pos[3][3] == "B") ||       // Diagonal
      (pos[0][3] == "B" && pos[1][2] == "B" && pos[2][1] == "B" && pos[3][0] == "B")) {
    blackWins = true;
    
  }
  
  // Check white
  if ((pos[0][0] == "W" && pos[0][1] == "W" && pos[0][2] == "W" && pos[0][3] == "W") ||       // Horizontal
      (pos[1][0] == "W" && pos[1][1] == "W" && pos[1][2] == "W" && pos[1][3] == "W") ||
      (pos[2][0] == "W" && pos[2][1] == "W" && pos[2][2] == "W" && pos[2][3] == "W") ||
      (pos[3][0] == "W" && pos[3][1] == "W" && pos[3][2] == "W" && pos[3][3] == "W") ||
      
      (pos[0][0] == "W" && pos[1][0] == "W" && pos[2][0] == "W" && pos[3][0] == "W") ||       // Vertical
      (pos[0][1] == "W" && pos[1][1] == "W" && pos[2][1] == "W" && pos[3][1] == "W") ||
      (pos[0][2] == "W" && pos[1][2] == "W" && pos[2][2] == "W" && pos[3][2] == "W") ||
      (pos[0][3] == "W" && pos[1][3] == "W" && pos[2][3] == "W" && pos[3][3] == "W") ||
      
      (pos[0][0] == "W" && pos[1][1] == "W" && pos[2][2] == "W" && pos[3][3] == "W") ||       // Diagonal
      (pos[0][3] == "W" && pos[1][2] == "W" && pos[2][1] == "W" && pos[3][0] == "W")) {
    whiteWins = true;
  }
}


// FUNCTION: Display help file
public void reading() {
  textSize (18);
  String[] lines = loadStrings ("help.txt");
  for (int i = 0; i < lines.length; i++) {
    text (lines[i], 925, 50 + (i * 20));
  }
}

// FUNCTION: Calculate distance between mouse and center of each gobblet
public float calcDistance(float a1, float a2, float b1, float b2) {
  float a = a1 - a2;
  float b = b1 - b2;
  float distance = sqrt(a*a + b*b);
  return distance;
}

// FUNCTION: Draw the gobblets
public void drawGobblets() {
  fill (0, 0, 0);                                                               // Draw the mini gobblets
  ellipse (NB1.getXPos(), NB1.getYPos(), NB1.getSize(), NB1.getSize());
  ellipse (NB2.getXPos(), NB2.getYPos(), NB2.getSize(), NB2.getSize());
  ellipse (NB3.getXPos(), NB3.getYPos(), NB3.getSize(), NB3.getSize());
  
  fill (255, 255, 255);
  ellipse (NW1.getXPos(), NW1.getYPos(), NW1.getSize(), NW1.getSize());
  ellipse (NW2.getXPos(), NW2.getYPos(), NW2.getSize(), NW2.getSize());
  ellipse (NW3.getXPos(), NW3.getYPos(), NW3.getSize(), NW3.getSize());
  
  fill (0, 0, 0);                                                               // Draw the small gobblets
  ellipse (SB1.getXPos(), SB1.getYPos(), SB1.getSize(), SB1.getSize());
  ellipse (SB2.getXPos(), SB2.getYPos(), SB2.getSize(), SB2.getSize());
  ellipse (SB3.getXPos(), SB3.getYPos(), SB3.getSize(), SB3.getSize());
  
  fill (255, 255, 255);
  ellipse (SW1.getXPos(), SW1.getYPos(), SW1.getSize(), SW1.getSize());
  ellipse (SW2.getXPos(), SW2.getYPos(), SW2.getSize(), SW2.getSize());
  ellipse (SW3.getXPos(), SW3.getYPos(), SW3.getSize(), SW3.getSize());
  
  fill (0, 0, 0);                                                               // Draw the medium gobblets
  ellipse (MB1.getXPos(), MB1.getYPos(), MB1.getSize(), MB1.getSize());
  ellipse (MB2.getXPos(), MB2.getYPos(), MB2.getSize(), MB2.getSize());
  ellipse (MB3.getXPos(), MB3.getYPos(), MB3.getSize(), MB3.getSize());
  
  fill (255, 255, 255);
  ellipse (MW1.getXPos(), MW1.getYPos(), MW1.getSize(), MW1.getSize());
  ellipse (MW2.getXPos(), MW2.getYPos(), MW2.getSize(), MW2.getSize());
  ellipse (MW3.getXPos(), MW3.getYPos(), MW3.getSize(), MW3.getSize());

  fill (0, 0, 0);                                                               // Draw the large gobblets
  ellipse (BB1.getXPos(), BB1.getYPos(), BB1.getSize(), BB1.getSize());
  ellipse (BB2.getXPos(), BB2.getYPos(), BB2.getSize(), BB2.getSize());
  ellipse (BB3.getXPos(), BB3.getYPos(), BB3.getSize(), BB3.getSize());
  
  fill (255, 255, 255);
  ellipse (BW1.getXPos(), BW1.getYPos(), BW1.getSize(), BW1.getSize());
  ellipse (BW2.getXPos(), BW2.getYPos(), BW2.getSize(), BW2.getSize());
  ellipse (BW3.getXPos(), BW3.getYPos(), BW3.getSize(), BW3.getSize());

}

// FUNCTION: Represent gobblets on the board
public void gobbletsOnBoard(String thisID, String thisColor,
                     float thisXPos, float thisYPos) {
 
  checkExisting(thisID);                                                        // Check if the gobblet alredy on the board and delete the past position 
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (thisXPos == 75+150*j && thisYPos == 75+150*i) {                       // Check for the position of the gobblet
        checkBoard[i][j] = thisID + checkBoard[i][j];
        pos[i][j] = thisColor;
      }
    }
  }
   
}

// FUNCTION: Check if the gobblet is alreday on the board
public void checkExisting(String thisID) {
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      String[] m1 = match(checkBoard[i][j], thisID);                            // Check if the gobblet exists
      if (m1 != null) {
     //   checkBoard[i][j] = "0";                                                 
        checkBoard[i][j] = checkBoard[i][j].substring(3);   // Delete the old position of the gobblet
     //   pos[i][j] = "0";
         pos[i][j] = ""+checkBoard[i][j].charAt(0);
         if (pos[i][j].equals("B") == true){
           pos[i][j] = "B";
         }
         else if (pos[i][j].equals("W") == true){
           pos[i][j] = "W";
         } 
      }
     
    }
  }
  
}

// FUNCTION: Check if the gobblet in the cell is bigger than the new one
public boolean checkBigger(String thisID,float thisXPos,float thisYPos){
  boolean flag = true;
  String currentSize  = thisID.substring(1,2);
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if (thisXPos == 75+150*j && thisYPos == 75+150*i){
 
      if (checkBoard[i][j].length() != 1){                                              // check if their gobblet exist in the same position
        
        String m1 = checkBoard[i][j].substring(1,2);
        
        if (m1.equals("B") == true){
          flag = false;
        }else if ((m1.equals("M") == true && currentSize.equals("M") == true) ||
                  (m1.equals("M") == true && currentSize.equals("S") == true) ||
                  (m1.equals("M") == true && currentSize.equals("N") == true)){
          flag = false;
        }else if ((m1.equals("S") == true && currentSize.equals("S") == true) ||
                  (m1.equals("S") == true && currentSize.equals("N") == true)){
          flag = false;
        }else if (m1.equals("N") == true && currentSize.equals("N") == true){
          flag = false;
        }
        
      }
      else
        flag = true;
    }
    }
  }
return flag;
}


// FUNCTION NEW GAME
public void keyPressed() {
    if ( key == ENTER) {
      
blackWins = false;
whiteWins = false;                                          // Winner indicator

 for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      checkBoard[i][j] = "0";
    }
 }                                                                    // Clear Board cells

for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      pos[i][j] = "0";
    }
 }                                                                    // Clear check if there's a winner

preXPos =0;                                                      // Used to store the previose X position of the gobblets
preYPos =0;                                                      // Used to store the previose Y position of the gobblets

BB1.setXandY(655,  89);  
BB2.setXandY(755,  89);
BB3.setXandY(855,  89);
BW1.setXandY(655, 389);
BW2.setXandY(755, 389);
BW3.setXandY(855, 389);
MB1.setXandY(655, 174);
MB2.setXandY(755, 174);
MB3.setXandY(855, 174);
MW1.setXandY(655, 474);
MW2.setXandY(755, 474);
MW3.setXandY(855, 474);
SB1.setXandY(655, 234);
SB2.setXandY(755, 234);
SB3.setXandY(855, 234);
SW1.setXandY(655, 534);
SW2.setXandY(755, 534);
SW3.setXandY(855, 534);
NB1.setXandY(655, 269);
NB2.setXandY(755, 269);
NB3.setXandY(855, 269);
NW1.setXandY(655, 569);
NW2.setXandY(755, 569);
NW3.setXandY(855, 569);

    }
}

// FUNCTION: Action if mouse is dragged
public void mouseDragged() {
  if (turn == true ){
  if (BB1.getMouseLock()) {
    BB1.setXandY(mouseX, mouseY);
  } else if (BB2.getMouseLock()) {
    BB2.setXandY(mouseX, mouseY);
  } else if (BB3.getMouseLock()) {
    BB3.setXandY(mouseX, mouseY);
  } else if (MB1.getMouseLock()) {
    MB1.setXandY(mouseX, mouseY);
  } else if (MB2.getMouseLock()) {
    MB2.setXandY(mouseX, mouseY);
  } else if (MB3.getMouseLock()) {
    MB3.setXandY(mouseX, mouseY);
  } else if (SB1.getMouseLock()) {
    SB1.setXandY(mouseX, mouseY);
  } else if (SB2.getMouseLock()) {
    SB2.setXandY(mouseX, mouseY);
  } else if (SB3.getMouseLock()) {
    SB3.setXandY(mouseX, mouseY);
  } else if (NB1.getMouseLock()) {
    NB1.setXandY(mouseX, mouseY);
  } else if (NB2.getMouseLock()) {
    NB2.setXandY(mouseX, mouseY);
  } else if (NB3.getMouseLock()) {
    NB3.setXandY(mouseX, mouseY);
  }
  
  }
 else{
   if (BW1.getMouseLock()) {
    BW1.setXandY(mouseX, mouseY);
  } else if (BW2.getMouseLock()) {
    BW2.setXandY(mouseX, mouseY);
  } else if (BW3.getMouseLock()) {
    BW3.setXandY(mouseX, mouseY);
  } else if (MW1.getMouseLock()) {
    MW1.setXandY(mouseX, mouseY);
  } else if (MW2.getMouseLock()) {
    MW2.setXandY(mouseX, mouseY);
  } else if (MW3.getMouseLock()) {
    MW3.setXandY(mouseX, mouseY);
  } else if (SW1.getMouseLock()) {
    SW1.setXandY(mouseX, mouseY);
  } else if (SW2.getMouseLock()) {
    SW2.setXandY(mouseX, mouseY);
  } else if (SW3.getMouseLock()) {
    SW3.setXandY(mouseX, mouseY);
  } else if (NW1.getMouseLock()) {
    NW1.setXandY(mouseX, mouseY);
  } else if (NW2.getMouseLock()) {
    NW2.setXandY(mouseX, mouseY);
  } else if (NW3.getMouseLock()) {
    NW3.setXandY(mouseX, mouseY);
  }
 
 }
}
// FUNCTION: Action if mouse is pressed
public void mousePressed() {

  BB1.setMouseLock(false);                  // Turn off mouseLock for all gobblets
  BB2.setMouseLock(false);
  BB3.setMouseLock(false);
  MB1.setMouseLock(false);
  MB2.setMouseLock(false);
  MB3.setMouseLock(false);
  SB1.setMouseLock(false);
  SB2.setMouseLock(false);
  SB3.setMouseLock(false);
  NB1.setMouseLock(false);
  NB2.setMouseLock(false);
  NB3.setMouseLock(false);
  BW1.setMouseLock(false);
  BW2.setMouseLock(false);
  BW3.setMouseLock(false);
  MW1.setMouseLock(false);
  MW2.setMouseLock(false);
  MW3.setMouseLock(false);
  SW1.setMouseLock(false);
  SW2.setMouseLock(false);
  SW3.setMouseLock(false);
  NW1.setMouseLock(false);
  NW2.setMouseLock(false);
  NW3.setMouseLock(false);
  if (turn == true ){
  if (BB1.getMouseOver()) {                   // Check if the mouse is over one of the gobblets
    BB1.setMouseLock(true);
    preXPos = BB1.getXPos();
    preYPos = BB1.getYPos();
  } else if (BB2.getMouseOver()) {
    BB2.setMouseLock(true);
    preXPos = BB2.getXPos();
    preYPos = BB2.getYPos();
  } else if (BB3.getMouseOver()) {
    BB3.setMouseLock(true);
    preXPos = BB3.getXPos();
    preYPos = BB3.getYPos();
  } else if (MB1.getMouseOver()) {
    MB1.setMouseLock(true);
    preXPos = MB1.getXPos();
    preYPos = MB1.getYPos();
  } else if (MB2.getMouseOver()) {
    MB2.setMouseLock(true);
    preXPos = MB2.getXPos();
    preYPos = MB2.getYPos();
  } else if (MB3.getMouseOver()) {
    MB3.setMouseLock(true);
    preXPos = MB3.getXPos();
    preYPos = MB3.getYPos();
  } else if (SB1.getMouseOver()) {
    SB1.setMouseLock(true);
    preXPos = SB1.getXPos();
    preYPos = SB1.getYPos();
  } else if (SB2.getMouseOver()) {
    SB2.setMouseLock(true);
    preXPos = SB2.getXPos();
    preYPos = SB2.getYPos();
  } else if (SB3.getMouseOver()) {
    SB3.setMouseLock(true);
    preXPos = SB3.getXPos();
    preYPos = SB3.getYPos();
  } else if (NB1.getMouseOver()) {
    NB1.setMouseLock(true);
    preXPos = NB1.getXPos();
    preYPos = NB1.getYPos();
  } else if (NB2.getMouseOver()) {
    NB2.setMouseLock(true);
    preXPos = NB2.getXPos();
    preYPos = NB2.getYPos();
  } else if (NB3.getMouseOver()) {
    NB3.setMouseLock(true);
    preXPos = NB3.getXPos();
    preYPos = NB3.getYPos();
  } 
  }
  else{ if (BW1.getMouseOver()) {
    BW1.setMouseLock(true);
    preXPos = BW1.getXPos();
    preYPos = BW1.getYPos();
  } else if (BW2.getMouseOver()) {
    BW2.setMouseLock(true);
    preXPos = BW2.getXPos();
    preYPos = BW2.getYPos();
  } else if (BW3.getMouseOver()) {
    BW3.setMouseLock(true);
    preXPos = BW3.getXPos();
    preYPos = BW3.getYPos();
  } else if (MW1.getMouseOver()) {
    MW1.setMouseLock(true);
    preXPos = MW1.getXPos();
    preYPos = MW1.getYPos();
  } else if (MW2.getMouseOver()) {
    MW2.setMouseLock(true);
    preXPos = MW2.getXPos();
    preYPos = MW2.getYPos();
  } else if (MW3.getMouseOver()) {
    MW3.setMouseLock(true);
    preXPos = MW3.getXPos();
    preYPos = MW3.getYPos();
  } else if (SW1.getMouseOver()) {
    SW1.setMouseLock(true);
    preXPos = SW1.getXPos();
    preYPos = SW1.getYPos();
  } else if (SW2.getMouseOver()) {
    SW2.setMouseLock(true);
    preXPos = SW2.getXPos();
    preYPos = SW2.getYPos();
  } else if (SW3.getMouseOver()) {
    SW3.setMouseLock(true);
    preXPos = SW3.getXPos();
    preYPos = SW3.getYPos();
  } else if (NW1.getMouseOver()) {
    NW1.setMouseLock(true);
    preXPos = NW1.getXPos();
    preYPos = NW1.getYPos();
  } else if (NW2.getMouseOver()) {
    NW2.setMouseLock(true);
    preXPos = NW2.getXPos();
    preYPos = NW2.getYPos();
  } else if (NW3.getMouseOver()) {
    NW3.setMouseLock(true);
    preXPos = NW3.getXPos();
    preYPos = NW3.getYPos();
  }
  }
  
}
// FUNCTION: Action if mouse is released
public void mouseReleased() {
if (turn == true ){
  if (BB1.getMouseLock()) {
    BB1.setMouseLock(false);                                                           // Turn off mouse lock
    if (mouseX >=600){                                                                  // Return to the last position if out of board
      BB1.setXandY(preXPos,  preYPos);
      turn = true;
  }else{
    BB1.centerCell(mouseX, mouseY);                                                    // Place gobblet in the center of the cell
    if (checkBigger(BB1.getID(),BB1.getXPos(),BB1.getYPos())){
      gobbletsOnBoard(BB1.getID(), BB1.getColorG(), BB1.getXPos(), BB1.getYPos());        // Represent gobblets on the board 
      turn = false;
    }else{
     BB1.setXandY(preXPos,  preYPos);  
  } 
      
  }
  }
  if (BB2.getMouseLock()) {
    BB2.setMouseLock(false);
    if (mouseX >=600){
      BB2.setXandY(preXPos,  preYPos);
      turn = true;
    }
    else{
      BB2.centerCell(mouseX, mouseY);
    if (checkBigger(BB2.getID(),BB2.getXPos(),BB2.getYPos())){
  gobbletsOnBoard(BB2.getID(), BB2.getColorG(), BB2.getXPos(), BB2.getYPos());
  turn = false;
 }
 else{
   BB2.setXandY(preXPos,  preYPos);  
 }      
     
  }
  }
  if (BB3.getMouseLock()) {
    BB3.setMouseLock(false);
    if (mouseX >=600){
      BB3.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    BB3.centerCell(mouseX, mouseY);
    if (checkBigger(BB3.getID(),BB3.getXPos(),BB3.getYPos())){
  gobbletsOnBoard(BB3.getID(), BB3.getColorG(), BB3.getXPos(), BB3.getYPos());
  turn = false;
 }
 else{
   BB3.setXandY(preXPos,  preYPos);  
 }   
    
  }
  }
  if (MB1.getMouseLock()) {
    MB1.setMouseLock(false);
    if (mouseX >=600){
      MB1.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    MB1.centerCell(mouseX, mouseY);
     if (checkBigger(MB1.getID(),MB1.getXPos(),MB1.getYPos())){
   gobbletsOnBoard(MB1.getID(), MB1.getColorG(), MB1.getXPos(), MB1.getYPos());
   turn = false;
  }
  else{
    MB1.setXandY(preXPos,  preYPos);
  }
    
  }
  }
  if (MB2.getMouseLock()) {
    MB2.setMouseLock(false);
    if (mouseX >=600){
      MB2.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    MB2.centerCell(mouseX, mouseY);
    if (checkBigger(MB2.getID(),MB2.getXPos(),MB2.getYPos())){
   gobbletsOnBoard(MB2.getID(), MB2.getColorG(), MB2.getXPos(), MB2.getYPos());
   turn = false; 
  }
  else{
    MB2.setXandY(preXPos,  preYPos);
  }
   
  }
    
  }
  if (MB3.getMouseLock()) {
    MB3.setMouseLock(false);
    if (mouseX >=600){
      MB3.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    MB3.centerCell(mouseX, mouseY);
    if (checkBigger(MB3.getID(),MB3.getXPos(),MB3.getYPos())){
    gobbletsOnBoard(MB3.getID(), MB3.getColorG(), MB3.getXPos(), MB3.getYPos());
    turn = false;
  }
  else{
    MB3.setXandY(preXPos,  preYPos);
  }
 
  }
  }
  if (SB1.getMouseLock()) {
    SB1.setMouseLock(false);
    if (mouseX >=600){
      SB1.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    SB1.centerCell(mouseX, mouseY);
     if (checkBigger(SB1.getID(),SB1.getXPos(),SB1.getYPos())){
    gobbletsOnBoard(SB1.getID(), SB1.getColorG(), SB1.getXPos(), SB1.getYPos());
    turn = false; 
  }
  else{
    SB1.setXandY(preXPos,  preYPos);
  }

  }
  }
  if (SB2.getMouseLock()) {
    SB2.setMouseLock(false);
    if (mouseX >=600){
      SB2.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    SB2.centerCell(mouseX, mouseY);
    if (checkBigger(SB2.getID(),SB2.getXPos(),SB2.getYPos())){
      gobbletsOnBoard(SB2.getID(), SB2.getColorG(), SB2.getXPos(), SB2.getYPos());
      turn = false;
  }
  else{
    SB2.setXandY(preXPos,  preYPos);
  }
   
  }
  }
  if (SB3.getMouseLock()) {
    SB3.setMouseLock(false);
    if (mouseX >=600){
      SB3.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    SB3.centerCell(mouseX, mouseY);
    if (checkBigger(SB3.getID(),SB3.getXPos(),SB3.getYPos())){
          gobbletsOnBoard(SB3.getID(), SB3.getColorG(), SB3.getXPos(), SB3.getYPos());
          turn = false;
  }
  else{
    SB3.setXandY(preXPos,  preYPos);
  }
 
  }
  }
  if (NB1.getMouseLock()) {
    NB1.setMouseLock(false);
    if (mouseX >=600){
      NB1.setXandY(preXPos,  preYPos);
      turn = true;
    }else{
    NB1.centerCell(mouseX, mouseY);
    if (checkBigger(NB1.getID(),NB1.getXPos(),NB1.getYPos())){
         gobbletsOnBoard(NB1.getID(), NB1.getColorG(), NB1.getXPos(), NB1.getYPos());
         turn = false; 
  }
  else{
    NB1.setXandY(preXPos,  preYPos);
  }
   
  }
  }
  if (NB2.getMouseLock()) {
    NB2.setMouseLock(false);
     if (mouseX >=600){
      NB2.setXandY(preXPos,  preYPos);
      turn = true;
     }else{
    NB2.centerCell(mouseX, mouseY);
    if (checkBigger(NB2.getID(),NB2.getXPos(),NB2.getYPos())){
         gobbletsOnBoard(NB2.getID(), NB2.getColorG(), NB2.getXPos(), NB2.getYPos());
         turn = false;
  }
  else{
    NB2.setXandY(preXPos,  preYPos);
  }
   
  } 
  }
  if (NB3.getMouseLock()) {
    NB3.setMouseLock(false);
     if (mouseX >=600){
      NB3.setXandY(preXPos,  preYPos);
      turn = true;
     }else{
    NB3.centerCell(mouseX, mouseY);
    if (checkBigger(NB3.getID(),NB3.getXPos(),NB3.getYPos())){
         gobbletsOnBoard(NB3.getID(), NB3.getColorG(), NB3.getXPos(), NB3.getYPos());
          turn = false; 
  }
  else{
    NB3.setXandY(preXPos,  preYPos);
  }
 
  }
  }
 
  }else{
  if (BW1.getMouseLock()) {
    BW1.setMouseLock(false);
    if (mouseX >=600){
      BW1.setXandY(preXPos,  preYPos);
      turn = false; 
  }else{
    BW1.centerCell(mouseX, mouseY);
    if (checkBigger(BW1.getID(),BW1.getXPos(),BW1.getYPos())){
       gobbletsOnBoard(BW1.getID(), BW1.getColorG(), BW1.getXPos(), BW1.getYPos());
       turn = true; 
  }
  else{
    BW1.setXandY(preXPos,  preYPos);
  }
 
  }
  }
  if (BW2.getMouseLock()) {
    BW2.setMouseLock(false);
    if (mouseX >=600){
      BW2.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    BW2.centerCell(mouseX, mouseY);
    if (checkBigger(BW2.getID(),BW2.getXPos(),BW2.getYPos())){
       gobbletsOnBoard(BW2.getID(), BW2.getColorG(), BW2.getXPos(), BW2.getYPos());
       turn = true;
  }
  else{
    BW2.setXandY(preXPos,  preYPos);
  }
   
  }
  }
  if (BW3.getMouseLock()) {
    BW3.setMouseLock(false);
    if (mouseX >=600){
      BW3.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    BW3.centerCell(mouseX, mouseY);
    if (checkBigger(BW3.getID(),BW3.getXPos(),BW3.getYPos())){
      gobbletsOnBoard(BW3.getID(), BW3.getColorG(), BW3.getXPos(), BW3.getYPos());
       turn = true;
  }
  else{
    BW3.setXandY(preXPos,  preYPos);
  }
  
  } 
  }
  if (MW1.getMouseLock()) {
    MW1.setMouseLock(false);
    if (mouseX >=600){
      MW1.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    MW1.centerCell(mouseX, mouseY);
     if (checkBigger(MW1.getID(),MW1.getXPos(),MW1.getYPos())){
        gobbletsOnBoard(MW1.getID(), MW1.getColorG(), MW1.getXPos(), MW1.getYPos());
        turn = true;
  }
  else{
    MW1.setXandY(preXPos,  preYPos);
  }
  
  }
  }
  if (MW2.getMouseLock()) {
    MW2.setMouseLock(false);
    if (mouseX >=600){
      MW2.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    MW2.centerCell(mouseX, mouseY);
    if (checkBigger(MW2.getID(),MW2.getXPos(),MW2.getYPos())){
        gobbletsOnBoard(MW2.getID(), MW2.getColorG(), MW2.getXPos(), MW2.getYPos());
        turn = true;
  }
  else{
    MW2.setXandY(preXPos,  preYPos);
  }

  }
  }
  if (MW3.getMouseLock()) {
    MW3.setMouseLock(false);
    if (mouseX >=600){
      MW3.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    MW3.centerCell(mouseX, mouseY);
    if (checkBigger(MW3.getID(),MW3.getXPos(),MW3.getYPos())){
       gobbletsOnBoard(MW3.getID(), MW3.getColorG(), MW3.getXPos(), MW3.getYPos());
       turn = true;
  }
  else{
    MW3.setXandY(preXPos,  preYPos);
  }
 
  }
  }
  if (SW1.getMouseLock()) {
    SW1.setMouseLock(false);
    if (mouseX >=600){
      SW1.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    SW1.centerCell(mouseX, mouseY);
    if (checkBigger(SW1.getID(),SW1.getXPos(),SW1.getYPos())){
       gobbletsOnBoard(SW1.getID(), SW1.getColorG(), SW1.getXPos(), SW1.getYPos());
        turn = true;
  }
  else{
    SW1.setXandY(preXPos,  preYPos);
  }
  
  }
  }
  if (SW2.getMouseLock()) {
    SW2.setMouseLock(false);
    if (mouseX >=600){
      SW2.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    SW2.centerCell(mouseX, mouseY);
     if (checkBigger(SW2.getID(),SW2.getXPos(),SW2.getYPos())){
        gobbletsOnBoard(SW2.getID(), SW2.getColorG(), SW2.getXPos(), SW2.getYPos());
        turn = true;
  }
  else{
    SW2.setXandY(preXPos,  preYPos);
  }
  
  } 

  }
  if (SW3.getMouseLock()) {
    SW3.setMouseLock(false);
    if (mouseX >=600){
      SW3.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    SW3.centerCell(mouseX, mouseY);
     if (checkBigger(SW3.getID(),SW3.getXPos(),SW3.getYPos())){
        gobbletsOnBoard(SW3.getID(), SW3.getColorG(), SW3.getXPos(), SW3.getYPos());
         turn = true;
  }
  else{
    SW3.setXandY(preXPos,  preYPos);
  }
  
  }
  }
  if (NW1.getMouseLock()) {
    NW1.setMouseLock(false);
    if (mouseX >=600){
      NW1.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    NW1.centerCell(mouseX, mouseY);
     if (checkBigger(NW1.getID(),NW1.getXPos(),NW1.getYPos())){
       gobbletsOnBoard(NW1.getID(), NW1.getColorG(), NW1.getXPos(), NW1.getYPos());
        turn = true;
  }
  else{
    NW1.setXandY(preXPos,  preYPos);
  }
 
  }
  }
  if (NW2.getMouseLock()) {
    NW2.setMouseLock(false);
    if (mouseX >=600){
      NW2.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    NW2.centerCell(mouseX, mouseY);
    if (checkBigger(NW2.getID(),NW2.getXPos(),NW2.getYPos())){
        gobbletsOnBoard(NW2.getID(), NW2.getColorG(), NW2.getXPos(), NW2.getYPos());
        turn = true;
  }
  else{
    NW2.setXandY(preXPos,  preYPos);
  }
   
  }
  }
  if (NW3.getMouseLock()) {
    NW3.setMouseLock(false);
    if (mouseX >=600){
      NW3.setXandY(preXPos,  preYPos);
       turn = false; 
  }else{
    NW3.centerCell(mouseX, mouseY);
    if (checkBigger(NW3.getID(),NW3.getXPos(),NW3.getYPos())){
       gobbletsOnBoard(NW3.getID(), NW3.getColorG(), NW3.getXPos(), NW3.getYPos());
        turn = true; 
  }
  else{
    NW3.setXandY(preXPos,  preYPos);
  } 

  } 
  }

}
  checkWinner();                                                                       // Check to see if there's a winner

}
// FUNCTION: Reset mouseOver for every gobblet
public void notMouseOver() {  
  BB1.setMouseOver(false);
  BB2.setMouseOver(false);
  BB3.setMouseOver(false);
  MB1.setMouseOver(false);
  MB2.setMouseOver(false);
  MB3.setMouseOver(false);
  SB1.setMouseOver(false);
  SB2.setMouseOver(false);
  SB3.setMouseOver(false);
  NB1.setMouseOver(false);
  NB2.setMouseOver(false);
  NB3.setMouseOver(false);
  BW1.setMouseOver(false);
  BW2.setMouseOver(false);
  BW3.setMouseOver(false);
  MW1.setMouseOver(false);
  MW2.setMouseOver(false);
  MW3.setMouseOver(false);
  SW1.setMouseOver(false);
  SW2.setMouseOver(false);
  SW3.setMouseOver(false);
  NW1.setMouseOver(false);
  NW2.setMouseOver(false);
  NW3.setMouseOver(false);
}
// FUNCTION: Draw the board
public void theBoard() {
  background (124, 48, 4);                                                  // Background color = dark orange
  fill (255, 141, 0);                                                       // Semicircle color = gold
  strokeWeight (4);                                                         // Line weight

  int a = 30;                                                               // Width of each semicircle
  int b = 150;                                                              // Height of each semicircle
  for (int i = 0; i < b * 4; i = i + b) {
    for (int j = 0; j < b * 4; j = j + b) {
      ellipse (0 + i, 74 + j, a, b);                                        // Circles and semicircles
      ellipse (74 + i, 0 + j, b, a);
      ellipse (149 + i, 74 + j, a, b);
      ellipse (74 + i, 149 + j, b, a);
      line (0 + i, 0 + j, 149 + i, 0 + j);                                  // Outline
      line (149 + i, 0 + j, 149 + i, 149 + j);
      line (149 + i, 149 + j, 0 + i, 149 + j);
      line (0 + i, 149 + j, 0 + i, 0 + j);
    }
  }
  fill (255, 141, 0);                                                     // Sideline
  rect (600, 0, 310, 599);
  textSize (20);
  fill (255, 255, 255);
  text ("Press Enter for New Game", 635, 25);
  if (turn == true ){
     text ("Black Turn", 700, 320);
  }
  else{
    text ("White Turn", 700, 320);
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Gobblet_Game" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
