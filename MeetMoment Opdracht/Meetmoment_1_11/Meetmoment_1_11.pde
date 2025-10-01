int steen1 = 5;
int steen2 = 5;
int steen3 = 6;
boolean damage = false;
int damageValue = 0;
String resultaat ="";

if(steen1 > 1 && steen2 > 1 && steen3 > 1){
  damage = true; damageValue = (steen1 + steen2 + steen3)/3; resultaat = damageValue + " HIT!"; 
}else{ resultaat ="mis!";
}
// checking damagevalue
println(damageValue);

println(resultaat);
