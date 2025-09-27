float c;
void setup(){
  exponent(2,3);
  println(c);
  exponent(5,0);
  println(c);
  exponent(3,4);
  println(c);
}

float exponent(float a, float b){
  c = pow(a,b);
  return c;
}
