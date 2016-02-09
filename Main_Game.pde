void drawForStateGame(){
background(204,0,0);
background();  

  if(gun.lives>=1){
    if(millis() - t.start_time >= t.interval){
      for (int i=0 ; i < targets.length ; i++) {
        randomspawn();
        targets[i] = new Target(z , 335);
        }
      }
   }
  
  if(bullets>=1 &&mousePressed && mouseButton == LEFT) {
   shooting = true; 
   bullets=bullets-.2;
   if (bullets<0) bullets=0;
  }
  else if(mousePressed&&mouseButton ==RIGHT) {
  shooting=false;
  bullets=10;
  }
  else
 {
   shooting=false;
 }
 
 int score;
 score=0;
 for(int i=0;i<targets.length;i++) {
   if(!targets[i].hit){
     targets[i].checkHit(shooting, mouseX, mouseY);
     targets[i].display();
   }
   score += targets[i].score;
 }
 
 noFill();
 if(shooting){
   stroke(255,0,0);
 }
 else {
   stroke(0);
   }
   ellipse(mouseX,mouseY,20,20);
   line(mouseX-15, mouseY, mouseX+15,mouseY);
   line(mouseX,mouseY-15, mouseX, mouseY+15);
   
   stroke(0);
   fill(100);
   for(int i=0;i<int(bullets);i++){
     rect(770,585-i*10,10,5);
   }
   
   text("Your score is: " +score, 100,580);
   
   
/*
  for (int i = targets_array.size()-1; i>=0;i--){
    Target target = targets_array.get(i);
    target.display();
    }*/
    
  t.time();
  t.display();
  


}//End Draw