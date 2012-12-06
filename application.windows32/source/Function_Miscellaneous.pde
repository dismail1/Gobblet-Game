// FUNCTION: Display help file
void reading() {
  textSize (18);
  String[] lines = loadStrings ("help.txt");
  for (int i = 0; i < lines.length; i++) {
    text (lines[i], 925, 50 + (i * 20));
  }
}

// FUNCTION: Calculate distance between mouse and center of each gobblet
float calcDistance(float a1, float a2, float b1, float b2) {
  float a = a1 - a2;
  float b = b1 - b2;
  float distance = sqrt(a*a + b*b);
  return distance;
}

// FUNCTION: Draw the gobblets
void drawGobblets() {
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
void gobbletsOnBoard(String thisID, String thisColor,
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
void checkExisting(String thisID) {
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
boolean checkBigger(String thisID,float thisXPos,float thisYPos){
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
void keyPressed() {
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

