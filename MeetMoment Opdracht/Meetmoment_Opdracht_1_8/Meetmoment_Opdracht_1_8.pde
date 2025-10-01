int temperatuurCelsius = 10;
boolean temperatuur = false;

if(temperatuurCelsius > 25 && temperatuurCelsius < 30){
  temperatuur = true; println("warm");
}else if(temperatuurCelsius >= 30){
  temperatuur = true; println("heet");
}else if(temperatuur != true){
  println("Het is nu " + temperatuurCelsius + " graden");
}
