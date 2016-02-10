void drawForStateGame(){
background(204,0,0);
background();  

  //Spawns a new small target and target every second in a random location
    if(millis() - t.start_time >= t.interval  ){
      for (int i=0 ; i < 1 ; i++) {
         randomspawn();
         smallrandomspawn();
         targets.add(new Target(z,335));
         stargets.add(new smallerTarget(q,205));
        }
      }


  
 
 //Draws targets and check if they have been hit. If hit adds to score  
 for(int i = 0 ; i < targets.size() ; i++) {
   if(!targets.get(i).hit){
     targets.get(i).checkHit(shooting, mouseX, mouseY);
     targets.get(i).display();
   }
 }
 
 for(int i = 0 ; i < stargets.size() ; i++) {
   if(!stargets.get(i).hit){
     stargets.get(i).smallcheckHit(shooting, mouseX, mouseY);
     stargets.get(i).smalldisplay();
   }
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
   
   text("Your score is: " +score, 90,510);//Displays Score of current Game
   
  
   
  t.time();
  t.display();
  
}//End Draw