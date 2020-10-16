Ball ball = new Ball(350,350,60);    //ball
Paddle paddleRight = new Paddle(670,height,30,200);  ///paddle right
//Paddle paddleLeft = new Paddle(0,height,30,200);   /// paddle left
PongGame ponggame = new PongGame();    //variable name ponggame of class

int scoreLeft = 0;  ///start score = 0
int scoreRight = 0;


void setup(){
  size(700,700);
  
}
void draw(){
  background(0);
  rect(width/2-5,0,10,height);   /// Demarcation line
  ball.display();            //call method name display of class name Ball
  ball.move();              //call method name move of class name Ball
  //paddleLeft.display();     // call method name display of class name Paddle
  paddleRight.display();   //call method name display of class neme Paddle
  ponggame.score();/// call method name score of class name PongGame
  ponggame.bounce(); //// call method name bounce of class name PongGame
  ponggame.paddle_bounce();   /// call method name paddle_bounce of class name PongGame
  
  if(mouseX > width/2){         ///condition Paddle
    paddleRight.Paddlemove();
  }else{
    //paddleLeft.Paddlemove();
  }
  
  textSize(40);
  textAlign(CENTER);
  text(scoreRight, width/2+30, 30); // Right side score
  text(scoreLeft, width/2-30, 30); // Left side score
}

class Ball{
  float x; 
  float y;  
  float diameter;
  float speedX;
  float speedY;
  color c;
  
  //constructor method
  Ball(int pos_x,int pos_y, int temp_diameter ){
    x = pos_x;
    y = pos_y;
    diameter = temp_diameter;
    speedX = 3;   ///speed ball
    speedY = 3;   
    c = (255);
  }
    
  void move(){ 
    /// Add speed to location
    y = y + speedY;
    x = x + speedX;
  }
  
  
  void display(){
    fill(c);   //set drawing color
    ellipse(x,y,diameter,diameter);  //draw ball
  } 
  
  ////check collision detection
  float left(){
    return x-diameter/2;
  }
  float right(){
    return x+diameter/2;
  }
  float top(){
    return y-diameter/2;
  }
  float down(){
    return y+diameter/2;
  }
  
}
class PongGame{
  
  void score(){
    if (ball.right() > width) {   /// Condition Score
    scoreLeft = scoreLeft + 1;
    ball.x = width/2;
    ball.y = height/2;
  }
  if (ball.left() < 0) {
    scoreRight = scoreRight + 1;
    ball.x = -ball.speedX;   ////
    ball.y = -ball.speedY;
  }
    
  }
  
  void bounce(){   ////Conditions for bouncing of the ball
    if (ball.down() > height) {  
    ball.speedY = -ball.speedY;
    }
    if (ball.top() < 0) {
    ball.speedY = -ball.speedY;
    }
    //if (ball.()> width - width/2){       /////
    //ball.speedY = -ball.speedY;
    //}
  }
  void paddle_bounce(){    ///Conditions for the bounce of the ball from Paddle
    //if (ball.bot() <= 0){
      //ball.speedX = -ball.speedX;
      //ball.speedY = map(ball.y - width.py, -width.h/2, width.h/2, -10, 10);
    //}

    if ( ball.right() > paddleRight.left() && ball.y > paddleRight.top() && ball.y < paddleRight.down()) {
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.y - paddleRight.py, -paddleRight.h/2, paddleRight.h/2, -10, 10);
    }
  }
}

class Paddle{
  float px;        
  float py;
  float w;
  float h;
  float speedX;
  float speedY;
  color c;
  //constructor method 
  Paddle(int pos_x,int pos_y,int tempW,int tempH ){
    px = pos_x;
    py = pos_y;
    w = tempW;
    h = tempH;
    speedX = 5;
    speedY = 5;
    c = (255);
  }
 
  
  void Paddlemove(){         ///Paddle can move with mouse
    if(dist(px,0,mouseX,0) < width/2){
      if(mousePressed){
        py = mouseY;
      }
    }
    if(dist(px,0,mouseX,0) > width - width/2){
      if(mousePressed){
        py = mouseY;
      }
    }
  }
  
  void display(){
    fill(c);   //set drawing color paddle
    rect(px,py,w,h);  //draw paddle
  }
  
  //help function 
  float left(){
    return px-w/2;
  }
  float right(){
    return px+w/2;
  }
  float top(){
    return py-h/2;
  }
  float down(){
    return py+h/2;
  }

}
  
