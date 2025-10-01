void setup(){
  size(100,190);
}

void draw(){
  background(255,255,255);
  tekenBoom(50, 10, 
            10, 90,  
            30, 90,  
            10, 150,  
            90, 150,  
            70, 90,  
            90, 90,   
            40, 150,  
            20, 30); 
}

void tekenBoom(int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4,
               int x5, int y5, int x6, int y6, int x7, int y7, int x8, int y8,
               int x9, int y9 
               ){
  line(x1, y1, x2, y2);
  line(x2, y2, x3, y3);
  line(x3, y3, x4, y4);
  line(x3, y3, x4, y4);
  line(x4, y4, x5, y5);    
  line(x5, y5, x6, y6);
  line(x6, y6, x7, y7);
  line(x7, y7, x1, y1);
  rect(x8, y8, x9, y9);
  
}
