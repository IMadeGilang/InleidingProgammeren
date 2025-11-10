// the pointer is done
// make the hit bar
// use the image function

boolean zombieHit = false;

Zombie no1z = new Zombie(165, 160, 75, 75,
       200, 125, 75);
       
Indicator i = new Indicator(200,392,5,0,390,400,5);

Hitbar no1h = new Hitbar(165,390,75,5);
float pointerSpeed = 2;

void setup(){
 size(400,400); 
 //fill(255,0,0);
 //no1h.showHitbar();
}

void draw(){
 background(0);
 no1z.showZombie();
 i.showIndicator();
 i.indicatorMove();
 pushStyle();
 fill(255,0,0);
 no1h.showHitbar();
 popStyle();
 
 
 
}

class Zombie{
  float bodyX;
  float bodyY;
  float bodyW;
  float bodyH;
  float headX;
  float headY;
  float headD;


  Zombie(float bodyX, float bodyY, float bodyW, float bodyH,
         float headX, float headY, float headD){
   this.bodyX = bodyX;
   this.bodyY = bodyY;
   this.bodyW = bodyW;
   this.bodyH = bodyH;
   this.headX = headX;
   this.headY = headY;
   this.headD = headD;
  }

  void showZombie(){
   rect(bodyX,bodyY,bodyW,bodyH);
   circle(headX,headY,headD);
  }

}

class Indicator{
  float pointerX;
  float pointerY;
  float pointerDiameter;
  float indicatorBarX;
  float indicatorBarY;
  float indicatorBarWidth;
  float indicatorBarHeight;
  
  Indicator(float pointerX, float pointerY, float pointerDiameter, float indicatorBarX,
            float indicatorBarY, float indicatorBarWidth,
            float indicatorBarHeight){
              this.pointerX = pointerX;
              this.pointerY = pointerY;
              this.pointerDiameter = pointerDiameter;
              this.indicatorBarX = indicatorBarX;
              this.indicatorBarY = indicatorBarY;
              this.indicatorBarWidth = indicatorBarWidth;
              this.indicatorBarHeight = indicatorBarHeight;
            }
            
   void showIndicator(){
     rect(indicatorBarX,indicatorBarY,indicatorBarWidth,indicatorBarHeight);
     circle(pointerX, pointerY, pointerDiameter);
   }
   
   void indicatorMove(){
     pointerX = pointerX + pointerSpeed;
     if(pointerX >= 400 || pointerX <= 0){
         pointerSpeed *= -1;
     } 
    
   }
            
}

class Hitbar{
  float bodyX;
  float indicatorBarY;
  float bodyW;
  float indicatorBarHeight;
  float pointerX;
  float pointerY;
  
  Hitbar(float bodyX, float indicatorBarY, float bodyW, float indicatorBarHeight){
    this.bodyX = bodyX;
    this.indicatorBarY = indicatorBarY;
    this.bodyW = bodyW;
    this.indicatorBarHeight = indicatorBarHeight;
  }
  void showHitbar(){
   rect(bodyX,indicatorBarY,bodyW,indicatorBarHeight);
  }
  
  void hit(){
    if(dist(pointerX,pointerY,bodyX,indicatorBarY) < bodyW && mousePressed){
      zombieHit = true;
      //below i only try to check the value
      println(zombieHit);
      println(bodyW);
      print(dist(pointerX,pointerY,bodyX,indicatorBarY));
  }
}
}

//void mouseClicked(){
// if(dist(pointerX,pointerY,bodyX,indicatorBarY) < bodyW){
//   zombieHit = true;
// }
//}
