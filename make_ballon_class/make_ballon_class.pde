

void setup(){
 size(400,400);
}

void draw(){
  Ballon myBallon = new Ballon(200,200,50,2);
  Ballon myBallon1 = new Ballon(250,200,50,2);
  myBallon.show();
  myBallon1.show();
}

class Ballon{
 float diameter;
 float speed;
 float x;
 float y;
 
 Ballon(float x, float y, float diameter, float speed){
   this.x = x;
   this.y = y;
   this.diameter = diameter;
   this.speed = speed;
 }
 
 void show(){
   background(0);
   ellipse(x,y,diameter,diameter);
   y = y - speed;
 }
 
}
