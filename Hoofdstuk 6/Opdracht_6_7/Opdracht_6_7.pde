float cijfer = 5.7;
boolean diploma =  false;
boolean vrijstelling = false;   // ik weet niet, wat moet ik met deze variabele doen
boolean cumlaude = false;

if(cijfer>=5.5){
  diploma = true;
}

if(cijfer >= 7.0 ){
  vrijstelling = true;
}

if(cijfer >= 8.0 ){
  cumlaude = true;
}

if(diploma == true){
  println("Gefeleciteerd");
}

if(vrijstelling == true){
  println("Gefeleciteerd u kunt dit vak vrijstelling");
}
