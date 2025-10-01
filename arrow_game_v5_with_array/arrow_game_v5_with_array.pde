float[] circles = {10,20,50};
float y = 500;

void setup(){
  size(500,500);
  
  circles[0] = 300; //past eerste waarde aan(als je dat zou willen)
  circles[1] = 350; //past eerste waarde aan(als je dat zou willen)
  circles[2] = 400;
  
  //voorbeeld loop
  for(int i = 0; i < circles.length; i++){
    //gebruik loop voor inde 1 tot lengte array
    println(circles[i]);
  }
}

void draw(){
  background(255,255,255);
  for(int i = 0; i < circles.length; i++){
    //gebruik loop voor inde 1 tot lengte array
    ellipse(circles[i],y,50,50);
    y = y - 1;
    if( y<=0){
        y = 500;
    if(dist(mouseX + 50,mouseY,circles[i],y) < 25){
        println("HIT HIT HIT HIT");
     }  
    }
  }
  
   rect(0,mouseY,30,50);
   
    if(mousePressed){
    line(mouseX,mouseY,mouseX + 50,mouseY);
      mouseX = mouseX + 5;
    }
    
  
   
   
}
