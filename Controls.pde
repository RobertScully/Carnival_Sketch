void keyPressed(){
  
  switch(state){
    case stateMenu:
      if(key=='1')
      {
        state=stateGame;
      }
      /*else if(key=='2')
      {
        state=stateLongGame;
      }*/
  }//close switch
  if(key=='r'||key=='R')
  {
    bullets=10;
  }
  
  if(key=='m'||key=='M')
  {
    reset();
    state=stateMenu;
  }
  if(key=='q'||key=='Q')
  {
    exit();
  }
  
  
}//Close keypressed
void mousePressed() {
//Controls shooting. If bullets is greater then 1 fires and decrements bullets
 if(mouseButton == LEFT){
   if(bullets>=1) {
      shooting = true; 
      bullets--;
    }
 }
  //If player right clicks reloads gun by changing bullets var to 10.
  else if(mouseButton == RIGHT) {
  shooting=false;
  bullets=10;
  }
  //If player isnt pressing left click sets shooting to false
}
void mouseReleased()
  {
   shooting=false;
  }