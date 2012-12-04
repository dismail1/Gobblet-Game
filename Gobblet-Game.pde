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

void setup()                                                           // Set up the display
{
  size (1280, 600);                                                    // Size of board
  blackWins = false;
  whiteWins = false;
}
