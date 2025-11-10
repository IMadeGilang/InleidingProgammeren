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
        y = height;
    if(dist(mouseX + 50,mouseY,circles[i],y) < 25){
        println("HIT HIT HIT HIT");
        noLoop();
     }  
    }
  }
  
   rect(0,mouseY,30,50);
   
    if(mousePressed){
    line(mouseX,mouseY + 25,mouseX + 50,mouseY + 25);
      mouseX = mouseX + 5;
    }
   
}

void mouseClicked(){
  
}

//void tekenPijlenOver(){
//  for(int i = 1; i <= pijlenOver; i++){
//    float lijnX = 380 + (i*10);
//    line(lijnX, 0,lijnX,30);
//  }
//}



// change arrow spawn with new variable
// add if arrow visible with boolean disini tempat kecepatan arrownya dibuat
// add how many arrow you have, draw it, with for loop
// make ballon with array
// pindahin collision dect ke tempat gambar balonnya, baru dia bisa collision dect nya
// balon[i]= 0 atau - 1223, untuk ngilangin balonnya kalo kena
// all things pindahin pake fungsi and methode biar void draw lebih rapi
