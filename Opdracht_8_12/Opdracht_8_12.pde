size(500,500);
background(255,255,255);

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    rect(20 + j*20, 20 + i*20, 20, 20);
    if((i+j) % 2 == 0){
      fill(0,0,0);            // understand the "if"
    }else{fill(255,255,255);
     }
    
  }
 
}
