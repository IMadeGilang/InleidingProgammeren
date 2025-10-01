int[] opdracht3 = new int[10];

void setup(){
  for(int i = 0; i < opdracht3.length; i++){
    opdracht3[i] = i;
    println(opdracht3[i]);
  }
  // change the value here
  for(int i = 0; i < opdracht3.length; i++){
    opdracht3[i] = 12 * i;
    println("12 * "+ i + "= " +opdracht3[i]);
  }
}

void draw(){
  
}
