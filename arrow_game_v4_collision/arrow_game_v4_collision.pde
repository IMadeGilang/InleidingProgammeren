// read the comment bellow

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
  y = y - 2;
  y1 = y1 - 3;
  ellipse(300,y,30,30);
  ellipse(330,y1,30,30);
 
  
  // here popetje
  rect(0,mouseY,30,50);
  
  println(y);
  if(y<=0){
    y = 500;
  }
   if(y1<=0){
    y1 = 500;
  }
  
  if(mousePressed){
    line(mouseX,mouseY,mouseX + 50,mouseY);
      mouseX = mouseX + 2;
  }
  
  //distance ballon1
  dist(mouseX + 50,mouseY,300,y);
  println(" Ballon1 " + dist(mouseX + 50,mouseY,300,y));
  
  
  
  // collision ballon1
  if(dist(mouseX + 50,mouseY,300,y) < 15){
    println("HIT HIT HIT HIT HIT HIT HIT HIT HIT HIT HIT HIT");    // this one working fine.
  }
  
   // collision ballon2
  if(dist(mouseX + 50,mouseY,330,y) < 15){
    println("HIT HIT HIT HIT HIT HIT HIT HIT HIT HIT HIT HIT");   // this one still not working!!! find out why!! is it skill issue??
    println("ballon2 " + dist(mouseX + 50,mouseY,330,y));
  }
    
    
  arrowX1 = arrowX1 + 2;
  arrowX2 = arrowX2 + 2;
  
  
  strokeWeight(5);
  
}

// with shooting arrow,Next adapt the screen with height and widht
