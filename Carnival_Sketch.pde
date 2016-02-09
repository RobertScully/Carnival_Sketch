final int stateMenu = 0;
final int stateGame = 1;
int state = stateMenu;

ArrayList<Target> targets_array;

void setup(){
size(1000,600);  
background(0);
targets_array= new ArrayList<Target>();
}//End Setup



void draw(){//Start Draw

  switch(state) {//Start switch
    case stateMenu:
      drawForStateMenu();
      break;
    
    case stateGame:
      drawForStateGame();
      break;
      
      default:
      break;
  
  }//switch ends
}//draw ends

void reset(){
  targets_array.clear();
  
  
  
}