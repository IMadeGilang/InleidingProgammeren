// $$$ = finish, $$ = almost finish, $ = just a sketch. no dollar = not yet started
// 1) make the object go one by one 
// 2) make collision detection $
// 3) make the size of object random $$
// 4) if the size of the object larger than player, game over $$
// 5) each time player eat, player become bigger $$
// 6) if the object eaten, its gone $$
// 7) make the player stay at the bottom screen 
// 8) function, methode, class ??? still not yet use. watch video to learn those 


float[] object = new float[5];
float objectX = random(0,400);
float objectY = 0;
float speed = random(1,5);
float objectSize = random(15,30);
//float foodValue = 0;
//float playerSize = 30 + foodValue;


void setup(){
  size(400,500);
  for(int i = 0; i < object.length; i++){
    object[i] = random(20,380);
  }
}

void draw (){
  background(0);
  player();
  object(); 
}

void object(){
   for(int i = 0; i < object.length; i++){
    ellipse(object[i],objectY,objectSize,objectSize);
    objectY = objectY + speed;
  }
}

void player(){
   rect(mouseX - 25,mouseY,50,50);
}

 // note 2), 4) and 5)
 // if(dist(mouseX - 25, mouseY, object[i],objectY) < 5){
 //    object[i] = object[i] + 1000;
 //    if(objectSize < 20){
 //      foodValue = 2;
 //    } else if(objectSize < 25 && objectSize >=20){
 //      foodValue = 3;
 //    } else if(objectValue == 30){
 //      foodValue = 5;
 //    } else if(objectSize >= playerSize){
 //      noLoop();
 //    }
