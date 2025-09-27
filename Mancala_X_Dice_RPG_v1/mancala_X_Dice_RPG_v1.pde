// mancala games but the stone is dice, and the dice system is the minigame in KDC1.


  
void setup(){
  size(500,300);
  int[] dice = new int [50];
  int d = random(6);
  dice[0]= d;
  println(d[0]);
  
}

void draw(){
  background(255,255,255);
  ellipse(50,150,50,80);
  ellipse(450,150,50,80);
  for(int i = 0; i < 5; i++){
    rect(80 + i*70, 30, 55, 55);
    rect(80 + i*70, 220, 55, 55);
  }
}
