// FUNCTION: Determine whether the game has been won 
void checkWinner() {

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


