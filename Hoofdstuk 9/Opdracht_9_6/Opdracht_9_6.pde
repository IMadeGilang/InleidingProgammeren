void setup(){
  size(200,200);
}

void draw(){
  for(int i=0; i<5; i++){
    ellipse(100 + i*10,100,90 - i*10,90 - i*10);
  }
}
