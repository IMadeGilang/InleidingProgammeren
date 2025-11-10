int c;

void setup(){
  println(kleinsteGetal(3,8));
  println(kleinsteGetal(8,3));
  println(kleinsteGetal(8,8));
  println(kleinsteGetal(5,4));
}

int kleinsteGetal(int a, int b){
  if( a < b){
    c = a;
  }else if( a > b){
    c = b;
  }else if( a == b){
    c = a;
  }
  return c;
}


////beter code
//int kleinsteGetal(int a, int b){
//  if( a < b){
//    return a;
//  }else {
//    return b;
// }
//}
