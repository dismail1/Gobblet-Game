BufferedReader reader;
String[] line;

void reading(){
background (255,236,202);
textSize(16);
 String[] lines = loadStrings("help.txt");
for (int i=0; i < lines.length; i++) {
  text(lines[i],150,100+(i*30));
}
}
