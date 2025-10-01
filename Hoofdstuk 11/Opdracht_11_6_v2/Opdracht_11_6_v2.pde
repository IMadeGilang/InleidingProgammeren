int[] opdracht6 = {1,2,3,5,7,2,6,2,8,2};
boolean gevonden;
int hoeveelKeer = 0;

void setup(){
  gevonden = false;
  for(int i = 0; i < opdracht6.length; i++){
    if(opdracht6[i] == 2){
      //checking index value
      println("//" + opdracht6[i]);
      gevonden = true;
      hoeveelKeer++;
  }
   
}
    println(hoeveelKeer);
}
