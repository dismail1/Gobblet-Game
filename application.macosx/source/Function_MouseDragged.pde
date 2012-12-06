// FUNCTION: Action if mouse is dragged
void mouseDragged() {
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
