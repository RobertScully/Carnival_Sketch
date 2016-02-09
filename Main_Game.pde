void drawForStateGame(){
background(204,0,0);
background();  

    if(millis() - t.start_time >= t.interval){
      for (int i=0 ; i < targets.length ; i++) {
        randomspawn();
        targets[i] = new Target(z , 335);
        }
      }

//Controls shooting. If bullets is greater then 1 fires and decrements bullets
if(bullets>=1 && mousePressed && mouseButton == LEFT) {
    shooting = true; 
    bullets-=0.2;
    if(bullets<0) bullets=0;
  }
  
  //If player right clicks reloads gun by changing bullets var to 10.
  else if(mousePressed && mouseButton == RIGHT) {
  shooting=false;
  bullets=10;
  }
  //If player isnt pressing left click sets shooting to false
  else
 {
   shooting=false;
 }
 
 //float score=0;
 //Draws targets and check if they have been hit. If hit adds to score  
 for(int i = 0 ; i < targets.length ; i++) {
   if(!targets[i].hit){
     targets[i].checkHit(shooting, mouseX, mouseY);
     targets[i].display();
   }
   score += targets[i].scores;
 }
 
   //Displays crosshair in place of a cursor. If mouse button is pressed turns crosshair red.
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
   
   //Displays number of bullets remaining
   stroke(0);
   fill(100);
   for(int i=0;i<int(bullets);i++){
     rect(770,585-i*10,10,5);
   }
   
   text("Your score is: " +score, 100,580);//Displays Score of current Game
   
  
   
  t.time();
  t.display();
  


}//End Draw