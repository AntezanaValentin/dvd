int bx = 400;
int by = 300;
int vx = 1;
int vy = 1;
int wy = 775;
int wx = 575;


void setup(){
  size(800,600);
  //background(255);
}

boolean isColliding(int bx, int by){
  boolean ballc = false;
  if (by == 25 || by == 575) { 
    ballc = true;
  }
  if (bx == 25 || bx == 775) { 
    ballc = true;
  }
  return ballc;
}

void draw(){
  background(0);
  ellipse(bx,by,50,50);  
  bx = bx + vx;
  by = by + vy;
 // if (isColliding(bx,by)) {
   
   if (bx > width - 25 || bx < 25) {     
    vx = vx*-1;
    fill(random(50,150),random(50,150),random(50,150));
   }
   if (by > height - 25 || by < 25) {
    vy = vy*-1;
    fill(random(50,150),random(50,150),random(50,150));
   }
//  if (isColliding(by,vy)) vy = vy*-1;
}
