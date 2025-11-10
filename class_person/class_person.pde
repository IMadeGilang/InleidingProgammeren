void setup(){
  person informatie = new person();
  informatie.personLeeftijd();
}

class person{
  String naam;
  int leeftijd;
  int geslacht;
  
  //constructor
  person(String naam, int leeftijd){
    this.naam = "I Made";
    this.leeftijd = 25;
  }
  
    
  
  //methode om leeftijd te tonen
  void personLeeftijd(){
   println(leeftijd); 
    println(naam);
  }
  
}
