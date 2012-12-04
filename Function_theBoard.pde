// FUNCTION: Draw the board
void theBoard() {
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
