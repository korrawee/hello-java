Ball ball = new Ball(width/2,height/2,50);

void setup(){
  size(700,700);
  
}
void draw(){
  background(0);
  ball.display();
  
}

class Ball{
  int x; 
  int y;  
  int diameter;
  int speedX;
  int speedY;
  color c;
  
  Ball(int pos_x,int pos_y, int temp_diameter){
    x = pos_x;
    y = pos_y;
    diameter = temp_diameter;
    speedX = 0;
    speedY = 0;
    c = (255);
  }
    
  
  
  void display(){
    fill(c);
    ellipse(x,y,diameter,diameter);
  } 
  
  void move(){  
  }
  
}
class Score{
  
  void on_touch_move(){  
  
  }

}

class Paddle{
  int px;        
  int py;        
  
  void move(){ 
  }
  
  void display(){
  }
  
  
  
}
