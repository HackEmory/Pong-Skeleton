class Ball{
  PVector pos = new PVector(500, 325); //Default position of the ball
  PVector speed = new PVector(-5,0);
  color ballColor = color(0, 0, 255); //Makes the ball blue
  float radius = 8; //8 pixel radius

 
  void drawBall(){
    //TODO Apply the color to the ball and draw it



    pos.x+=speed.x;
    pos.y+=speed.y;
  }
}