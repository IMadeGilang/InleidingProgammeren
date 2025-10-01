size(700,700);
background(255,255,255);
int x = 0;
int y = 0;

for(int i = 0; i < 50; i++){
  x = 500 - i*10;
  y = 500 - i*10;           
  ellipse((height/2)- x/2 ,(width/2) - y/2 ,x ,y ); 
  println(x + "," + y);
}
