
float x;
float speed;

void setup(){
 size(400,400); 
 x = 200;
 speed = 1;

}

void draw(){
 background(0);

 ellipse(x,200,50,50);
 x = x + speed;
 if( x >= 400 || x <= 0){
  speed *= -1; 
 }
}


class Zombie {
  
}
