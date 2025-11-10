Zombie no1z = new Zombie(165, 160, 75, 75,
       200, 125, 75);
       
Indicator i = new Indicator(200,392,5,0,390,400,5);

Hitbar no1h = new Hitbar();
       

void setup(){
 size(400,400); 
}

void draw(){
 background(0);
 no1z.showZombie();
 i.showIndicator();
 i.indicatorMove();
 no1h.showHitbar();
 
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
     float pointerSpeed = 2;
     pointerX = pointerX + pointerSpeed;
     if(pointerX >= 400){
         pointerSpeed = pointerSpeed * -1;
     } 
     if(pointerX <= 0){
         pointerSpeed = pointerSpeed * -1;
     }
     
   }
            
}

class Hitbar{
  float bodyX;
  float indicatorBarY;
  float bodyW;
  float indicatorBarHeight;
  //float hitbarX;
  //float hitbarY;
  //float hitbarWidth;
  //float hitbarHeigth;
  
  void showHitbar(){
   //fill(255,0,0);
   //rect(bodyX,indicatorBarY,bodyW,indicatorBarHeight);
  }
}
