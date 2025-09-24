size(400,400);
background(0,0,0);

int xWaarde = 10;
int yWaarde = 10;


for(int i = 1; i < 11; i++){
  rect(xWaarde + 30, yWaarde, 20, 20);
  xWaarde += 30;
}
for(int i = 1; i < 11; i++){
  textSize(15);
  fill(255,0,0);
  text(i, 15 + i*30, yWaarde + 15); /* you need to calculate the parameter*/
}
