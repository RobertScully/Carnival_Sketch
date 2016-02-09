final int stateMenu = 0;
final int stateGame = 1;
int state = stateMenu;

boolean shooting;
float bullets;

public int z=0;


//ArrayList<Target> targets_array;
Target[] targets = new Target[15];

Player gun;
Timer t;

void setup(){
  size(1000,600);  
  background(0);
  
  bullets=10;
  
  //targets_array= new ArrayList<Target>();
  
  gun = new Player();
  t = new Timer();
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
  t.time="000";
  //targets_array.clear();
}