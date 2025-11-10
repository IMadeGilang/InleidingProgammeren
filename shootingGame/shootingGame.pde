int mode = 0;
Player player = new Player(width/2,750,50,50);
Bullet bullet = new Bullet((player.pX + 25), (player.pY + 25));
boolean playerLife = true;
Monster[] monsters = new Monster[3];
boolean hit = false;

void setup(){
  size(500,800);
  background(255,255,255);
  monsters[0] = new Monster(random(0 + 30,width -30),10,50,50);
  monsters[1] = new Monster(random(0 + 30,width -30),10,50,50);
  monsters[2] = new Monster(random(0 + 30,width -30),10,50,50);
}

void draw(){
  if(mode == 0){
  playerLife = true;
  background(255,255,255);
  player.showPlayer();
  bullet.showBullet();
  bullet.shootBullet();  
  for(int i = 0; i < monsters.length; i++){
   monsters[i].showMonster();
   monsters[i].monsterCollisionWithbullet(); // why this not working
  }
  
  if(playerLife == false){
    noLoop();
    background(255, 255, 255);
    pushStyle();
    fill(255, 0, 0);
    String gameover = " YOU ARE DEAD!!";
    textAlign(CENTER);
    textSize(10);
    //text(gameover, height/2, width/2); // why this one not in the right place
    text(gameover, 250, 400);
    popStyle();
   }
  }else if (hit == true){
    mode = 1;
  }
  
  if(mode == 1){
    background(255, 255, 255);
    pushStyle();
    fill(255, 0, 0);
    String gameover = " YOU KILLED THE MONSTER";
    textAlign(CENTER);
    textSize(10);
    //text(gameover, height/2, width/2); // why this one not in the right place
    text(gameover, 250, 400);
    popStyle(); 
  }
}

class Player{
 float pX;
 float pY;
 float pW;
 float pH;
 
 Player(float pX,float pY,float pW,float pH){
   this.pX = pX;
   this.pY = pY;
   this.pW = pW;
   this.pH = pH;
 }
 
 void showPlayer(){
  fill(0,0,255);
  rect(pX,pY,pW,pH);
  if(keyPressed) {
    if(keyCode == LEFT){
      pX-=3;
    }
    else if(keyCode == RIGHT){
     pX+=3;
    }
  }
 }
}

class Monster{
 float mX;
 float mY;
 float mW;
 float mH;
 float mSpdX = 5;
 float mSpdY = 0.3;
 
 
 Monster(float mX,float mY,float mW,float mH){
   this.mX = mX;
   this.mY = mY;
   this.mW = mW;
   this.mH = mH;
 }
 
 void showMonster(){
  // collision in x direction
  if(mX + mW > player.pX &&
     mX < player.pX + player.pW &&
     mY + mH > player.pY &&
     mY < player.pY + player.pH){
       playerLife = false;
     } else if(mX < 0 || mX + mW > width){
       mSpdX *= -1;
     }
   // collision in y direction
   if(mX + mW > player.pX && 
      mX < player.pX + player.pW &&
      mY + mH > player.pY &&
      mY < player.pY + player.pH){
        playerLife = false;
      }else if(mY < 0 || mY + mH > height){
        playerLife = false;
      }
      
   mX += mSpdX;
   mY += mSpdY;
   pushStyle();
   fill(random(255),random(255),random(255));
   rect(mX,mY,mW,mH); 
   popStyle();
 }
 
 void monsterCollisionWithbullet(){
    if(bullet.bX > mX && bullet.bX < mX + mW && bullet.bY > mY && bullet.bY < mY + mH){
       hit = true; 
       mode = 1;
       //noLoop();
       println(hit);
    }
 }
 
}

class Bullet{
 float bX;
 float bY;
 float bD;
 float bSpd;
 boolean bExist;
 
 Bullet(float bX, float bY){
  this.bX = bX;
  this.bY = bY;
  this.bD = 20;
  this.bSpd = 0;
 }
 
 void showBullet(){
      fill(0);
      circle(bX,bY,bD);
      if(keyPressed) {
    if(keyCode == LEFT){
      bX-=3;
    }
    else if(keyCode == RIGHT){
     bX+=3;
    }
  }
      bY += bSpd;
      if(bY < 0){
       bY = player.pY + 25;
       bSpd = 0;
      }
     }
 
 void shootBullet(){
   if(mousePressed){
      bSpd = -40;
    }
   }
}

//void mouseClicked(){
//  bullet.bSpd = -20;
// }
