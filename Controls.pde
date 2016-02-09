void keyPressed(){
  
  switch(state){
    case stateMenu:
      if(key=='1')
      {
        state=stateGame;
      }
      if(key=='2')
      {
        state=stateGame;
      }
      if(key=='3')
      {
        state=stateGame;
      }
  }//close switch
  if(key=='r'||key=='R')
  {
    reset();
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