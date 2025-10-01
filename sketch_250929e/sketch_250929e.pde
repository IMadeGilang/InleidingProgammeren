int[] opdracht7 = new int[100];
int a;
boolean gevonden;


void setup(){
  telHoeVaakGetalVoorkomt(2);
  println(telHoeVaakGetalVoorkomt(2));
}

void index(){
  for(int i = 0; i < opdracht7.length; i++){
    opdracht7[i] = int(random(0,9));
  }
}

int telHoeVaakGetalVoorkomt(int getal){
for(int i = 0; i < opdracht7.length; i++){
    if(opdracht6[i] == getal){
      //checking index value
      println("//" + opdracht6[i]);
      gevonden = true;
      a++;
      
    }
}
return a;
}
