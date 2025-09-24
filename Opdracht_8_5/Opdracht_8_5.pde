size(200,200);
background(255,255,255);
int x = 0;
int y = 0;

for(int i = 0; i < 5; i++){
  x = 90 - i*20;
  y = 90 - i*20;            /* but why, if the x, y variabele are bellow de ellipse */
  ellipse(100 ,100 ,x ,y ); /* the last circle will not be drawn? try understand that */
  println(x + "," + y);
}
  
