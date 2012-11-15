float bx1;
float bx2;
float bx3;
float bx4;
float by1;
float by2;
float by3;
float by4;
// size of the circles
int BigCircleRadius = 100;
int MeduimCircleRadius = 75;
int SmallCircleRadius = 50;
int SmallerCircleRadius = 25;
Circle lightBigCircle,lightMeduimCircle, lightSmallCircle,lightSmallerCircle;


class Circle{
  float x, y, radius;
  boolean overBox1 = false;
 boolean locked1 = false;
float yOffset1 = 0.0;
float xOffset1 = 0.0;
  Circle(float xpos, float ypos, float r) {
    x = xpos;
    y = ypos;
    radius = r;
   
  }
  void display(int r,int g, int b) {
    fill(r, g, b);
    ellipse(x, y, radius, radius);
    
  }
void move()
{
  
   if (mouseX > x-radius && mouseX < x+ radius &&                //   - Test if the cursor is over the circle
      mouseY > y- radius && mouseY < y+ radius) {
    overBox1 = true;
  }
  if ((mousePressed == true) && overBox1 == true){
     locked1 = true;
  }
  else {
    locked1 = false;
  }
  xOffset1 = mouseX;
  yOffset1 = mouseY;
  if (locked1 == true) {
    x = mouseX;
    y = mouseY;
  }
  if (mousePressed == false){
  locked1 = false;
  }
}
void release(){
  if (mousePressed == false){
  locked1 = false;
  overBox1 = false;
  
  } 
}
}




