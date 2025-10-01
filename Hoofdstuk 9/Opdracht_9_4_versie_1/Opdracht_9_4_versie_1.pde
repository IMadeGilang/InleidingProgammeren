void setup(){
  size(200,200);
}

void draw(){
  background(255,255,255);
  vierkant(50,150);
}

void vierkant(int a, int b){
  line(a,a,a,b);
  line(a,b,b,b);
  line(b,b,b,a);
  line(b,a,a,a);
}
  
  
