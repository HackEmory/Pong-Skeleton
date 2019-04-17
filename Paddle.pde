class Paddle {
  //Instance variable declarations
  PVector pos;
  PVector dim;  
  color paddleColor = color(0, 255, 0);

  Paddle(PVector poss, PVector dimensions) { //Set the local variables passed in to the instance variables
    pos = poss;
    dim = dimensions;
  }
  
  void drawPaddle() {
    //TODO apply color to the paddle and draw it



    
    //Check if the ball is off the screen and update score
    checkOffScreen();
    
    //Check if the ball collided with a paddle
    checkCollision();
  }
  
  void checkOffScreen() {
    
    //TODO fill in the bounderies for walls
    
    //If the ball passes the player
    if (ball.pos.x < 9999) {
      p2++;//Add a point to the computer
      ball.speed.y = 0;//Reset ball y speed
      ball.pos.x = 500;//Reset x position of the ball
    }
    
    //If the ball goes passed the computer
    if (ball.pos.x > 9999) {
      p1++;//Add a point to the player
      ball.speed.y = 0;//Reset ball y speed
      ball.pos.x = 500;//Reset x position of the ball
    }

    //If the ball hits the top
    if (ball.pos.y < 9999) {
      ball.speed.y = 2;//Change the ball speed to downwards
    }

    //If the ball hits the bottom
    if (ball.pos.y > 9999) {
      ball.speed.y = -2;//Change the ball speed to go upwards
    }
  }
  
  void checkCollision(){
  
    //TODO Detect Collisions between Ball and Paddle **CHALLENGING**
    
    //If the ball is moving to the left 
    if (ball.speed.x < 0) {
      if (true) {
        ball.speed.x*=-1;//Change the direction of the ball
        ball.speed.y = random(-3, 3);//Give the ball a random Y speed
      }
    }
    
    //If the ball is moving to the right
    else {
      if (true) {
        ball.speed.x*=-1;//Change the direction of the ball
        ball.speed.y = random(-5, 5);//Give the ball a random Y speed
      }
    }
  }
}