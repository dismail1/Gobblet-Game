// FUNCTION: Action if mouse is pressed
void mousePressed() {

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
