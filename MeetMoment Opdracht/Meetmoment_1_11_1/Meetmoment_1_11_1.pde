int steen1 = 1;
int steen2 = 2;
int steen3 = 4;
int damageValue = 0;
String resultaat ="";

if(steen1 == 6 && steen2 == 6 && steen3 == 6){
  damageValue = (steen1 + steen2 + steen3)/3; resultaat = damageValue + " MAX HIT!"; 
}else if(steen1 > 1 && steen2 > 1 && steen3 > 1){
  damageValue = (steen1 + steen2 + steen3)/3; resultaat = damageValue + " HIT!";
}else if(steen1 == 1 && steen2 == 1 && steen3 == 1){
  resultaat =" Critical MISS!";
}else if(steen1 == 1 || steen2 == 1 || steen3 == 1){
  resultaat ="mis!"; /* if one of the dice is "one" then the result is mis */
}

println(resultaat);
