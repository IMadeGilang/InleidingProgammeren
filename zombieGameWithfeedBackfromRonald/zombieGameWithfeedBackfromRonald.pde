int mode;
int[] screen = {0, 1, 2};
PImage zombie;
PImage gun;
//Zombie zno1 = new Zombie(random(50, 400), height/2, random(100, 120), random(200, 400));
//Zombie zno2 = new Zombie(random(50,400),height/2,random(100,120),random(200,400));  i wwant to try to make a second zombie but fix the hit point first
Indicator indibar = new Indicator();    // calling the indicatorbar class
Pointer ball = new Pointer();
Gun gunPng = new Gun();
float boostSpeed = 0;
float pointerSpeed = (5 + boostSpeed);
int[] numberOfZombie = new int[2];
Zombie[] zombies = {  new Zombie(random(50, 400), height/2, random(100, 120), random(200, 400)), new Zombie(random(50, 400), height/2, random(100, 120), random(200, 400))  };
//float hitPoint ; how to make hitpoint
boolean hit = false;
boolean winOrLose = false;
int timerForZombie = 0;
//float hitPointX;
//float hitPointY;

// make class pointer (done)
// why sometimes if i miss the first loop of the pointer i can not hit the zombie  (update: already fix)
// fix the bug!!
// fix the number of zombie bug
// fix the key for shooting bug  (update: already fix)
// fix the color of hitbar after retry (update: already fix)
// fix the hit detection, after this maybe try to make the zombie move closer and maybe other things
// after retry, the zombie timer is not working!! fix this
// after retry, the position of zombie is the same


void setup() {
  size(600, 600);
  zombie = loadImage("zompng.png");
  gun = loadImage("gun2.png");
  numberOfZombie[0] = 1;
  numberOfZombie[1] = 2;
}

void draw() {
  if (mode == screen[0]) {
    background(0);
    timerForZombie++;
    for (int i = 0; i < zombies.length; i++) {
      Zombie zombie =  zombies[i];
      zombie.showZombie();
     

      if ((dist(zombie.zX, zombie.hitPointY, ball.pointerX, ball.pointerY) <= 50) && key == 'b') {       // becarefull if the "caps lock" on then the key b is not working
        // bellow here only checking the value
        println(zombie.hitPointX);
        println(ball.pointerX);
        hit = true;
        mode = screen[2];
      } else if ( timerForZombie > 300) {
        hit = false;
        mode = screen[1];
      }
      circle(zombie.zX, zombie.hitPointY, 100);   // this hit point somehow works fine. search how. why the last method not   //
    }
    //zno1.showZombie();

  //draw bullet (need: x,y)

    gunPng.showGun();
    indibar.showIndicator();
    pushStyle();
    fill(255, 0, 0);
    ball.showPointer();
    ball.pointerMove();
    popStyle();
  } else if (mode == screen[1]) {
    background(255, 255, 255);
    fill(255, 0, 0);
    String gameover = " YOU ARE DEAD! CLICK 'R' TO RETRY.";
    textAlign(CENTER);
    textSize(20);
    text(gameover, height/2, width/2);
  } else if (mode == screen[2]) {
    background(255, 255, 255);
    pushStyle();
    fill(255, 0, 0);
    String gameover = " YOU KILLED THE ZOMBIE";
    textAlign(CENTER);
    textSize(20);
    text(gameover, height/2, width/2);
    popStyle();
    if (key == 'r') {
      mode = screen[0];
      timerForZombie = 0;
    }
  }
}

void keyPressed(){
  println("KEY PRESSED: " + key);
 
}

class Zombie {
  float zX;
  float zY;
  float zW;
  float zH;
  float hitPointX = zX;
  float hitPointY ;

  Zombie(float zX, float zY, float zW, float zH) {
    this.zX = zX;
    this.zY = zY;
    this.zW = zW;
    this.zH = zH;
    this.hitPointX=zX;
    this.hitPointY = zY;
  }


  void showZombie() {
    //for (int i = 0; i < numberOfZombie.length; i++) {
    //image(zombie,(zX*i),zY,zW,zH);    // where should i use the int i. update: i already add int i but now there are only one hit point.
    image(zombie, zX, zY, zW, zH);
    circle(hitPointX, hitPointY, 5);           // need to adjust the x position
    // bellow i try to make the zombie come closer. but it make mess with the hit point
    zW = zW + 0.1;
    zH = zH + 0.1;
    //}
  }
}

class Indicator {
  float indicatorBarX;
  float indicatorBarY;
  float indicatorBarWidth;
  float indicatorBarHeight;

  Indicator() {
    indicatorBarX = 0;
    indicatorBarY = 550;
    indicatorBarWidth = 600;
    indicatorBarHeight = 50;
  }

  void showIndicator() {
    rect(indicatorBarX, indicatorBarY, indicatorBarWidth, indicatorBarHeight);
  }
}

class Pointer {
  float pointerX;
  float pointerY;
  float pointerdiameter;

  Pointer() {
    pointerX = 300;
    pointerY = 575;
    pointerdiameter = 50;
  }

  void showPointer() {
    circle(pointerX, pointerY, pointerdiameter);
  }

  void pointerMove() {
    pointerX = pointerX + pointerSpeed;
    if (pointerX >= 600 || pointerX <= 0) {
      pointerSpeed *= -1;
    }
  }
}

class Gun {
  float gX;
  float gY;
  float gW;
  float gH;

  Gun() {
    gX = 280;
    gY = 420;
    gW = 150;
    gH = 150;
  }
  void showGun() {
    image(gun, gX, gY, gW, gH);
  }
}


// bellow is class idea


class Bullet {
  int[] numberBullet;

  Bullet() {
  }
  void showBullet() {
  }
}

// class SpecialZombie
// class



//void mouseClicked(){
//  if(dist(zno1.hitPointX, zno1.hitPointY, ball.pointerX, ball.pointerY) <= 100){
//    hit = true;
//    mode = 1;
//  }
//}
