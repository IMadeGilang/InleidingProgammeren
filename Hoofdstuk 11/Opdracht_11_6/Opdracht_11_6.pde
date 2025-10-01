int[] opdracht6 = {2,7,3,2,7,2,6,8,8,1};
boolean gevonden;
int hoeveelKeer = 0;

void setup(){
telHoeVaakGetalVoorkomt(2);
println(telHoeVaakGetalVoorkomt(2));
}

int telHoeVaakGetalVoorkomt(int getal){
  gevonden = false;
  for(int i = 0; i < opdracht6.length; i++){
    if(opdracht6[i] == getal){
      //checking i
      println("==" + opdracht6[i]);
      // checking getal
      println(getal);
      gevonden = true;
      hoeveelKeer++;
      //checking hoeveelkeer
      println("//" + hoeveelKeer);
    }
  }
  return hoeveelKeer;
}
