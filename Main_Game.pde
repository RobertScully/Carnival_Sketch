void drawForStateGame(){
background(204,0,0);
background();  

if(frameCount>600){//Once 10 seconds has passed ends the game 
   if (score > topscore1){
     topscore3 = topscore2;
     topscore2 = topscore1;
     topscore1 = score;
   }

  else if (score > topscore2){
    topscore3 = topscore2;
    topscore2 = score;
  }

  else if (score > topscore3){
    topscore3 = score;
  }  
    lastscore=score;
 
 
    state=stateMenu;
    reset();  
}


  //Spawns a new small target and target every second in a random location
    if(millis() - t.start_time >= t.interval  ){
      for (int i=0 ; i < 1 ; i++) {
         randomspawn();//Sets spawn randomly every second
         smallrandomspawn();
         targets.add(new Target(z,335));//Adds target every second
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
   //Draws smaller targets and check if they have been hit. If hit adds to score
   for(int i = 0 ; i < stargets.size() ; i++) {
     if(!stargets.get(i).hit){
       stargets.get(i).smallcheckHit(shooting, mouseX, mouseY);
       stargets.get(i).smalldisplay();
     }
   }
 
 
   //Displays crosshair in place of a cursor. If mouse button is pressed turns crosshair red.
   noCursor();
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
   fill(0);
   text("Ammo", 770,500);
   stroke(0);
   fill(100);
   for(int i=0;i<int(bullets);i++){
     rect(775,595-i*10,10,5);
   }
   
   
  
   
  t.time();
  t.display();
  
}//End Draw