PImage zombieImg;
PImage[] zombies = new PImage[2];

void setup(){
  size(600,600);
  //zombieImg = loadPixels("zombie_PNG42.png");
  //correct code bellow
  zombieImg = loadImage("zombie_PNG42.png");
  zombies[0] = loadImage("zombie_PNG42.png");
  zombies[1] = loadImage("zombie_PNG42.png");
  zombies[2] = loadImage("zombie_PNG42.png");
  //zombies[1] = image(zombieImg,400,50);
  //zombies[2] = image(zombieImg,550,50);
}

void draw(){
  zombieImg.resize(200,300);
  image(zombieImg,200,50);
  //zombies[0];
  //zombies[1];
  //zombies[2];
  ////zombieImg.resize(200,300);
  //image(zombieImg,200,50);
}
