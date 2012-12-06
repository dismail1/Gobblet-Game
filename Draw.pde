void draw()
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
