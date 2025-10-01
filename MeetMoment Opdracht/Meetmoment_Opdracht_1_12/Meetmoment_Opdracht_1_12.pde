float totaalAntalLessen = 20.0;
float gevolgdeLessen = 17.0;
float cijfer = 7.0;
float minGevoldeLessen = 80.0 / 100.0 ;
println(minGevoldeLessen);

if((cijfer >= 5.5) && (gevolgdeLessen/totaalAntalLessen) >= minGevoldeLessen){
  // all other print is for checking
  // print cijfer
  println(cijfer);
  // print gevolgdeLessen
  println(gevolgdeLessen/100);
  // print gevolgdeLessen
  println(minGevoldeLessen);
  
  println("geslaagd");
}
else if(cijfer < 5.5 || (gevolgdeLessen/100) < minGevoldeLessen){
println("gezakt");
}



  
  
