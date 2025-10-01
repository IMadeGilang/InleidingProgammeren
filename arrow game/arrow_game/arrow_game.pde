float y = 500;
float y1 = 500;
float arrowX1 = 10 ;
float arrowY1 = 250 ;
float arrowX2 = 50 ;
float arrowY2 = 250 ;


void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  y = y - 4;
  y1 = y1 - 6;
  ellipse(100,y,30,30);
  ellipse(130,y1,30,30);
  
  println(y);
  if(y<=0){
    y = 500;
  }
   if(y1<=0){
    y1 = 500;
  }
  arrowX1 = arrowX1 + 2;
  arrowX2 = arrowX2 + 2;
  
  strokeWeight(5);
  line(arrowX1,arrowY1,arrowX2,arrowY2);
   if(arrowX1>=500){
    arrowX1 = 10; arrowX2 = 50;
   }
  
}
