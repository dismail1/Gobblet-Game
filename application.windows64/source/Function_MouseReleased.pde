// FUNCTION: Action if mouse is released
void mouseReleased() {
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
