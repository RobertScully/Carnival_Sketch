final int stateMenu = 0;
final int stateGame = 1;
int state = stateMenu;

boolean shooting,hit;
float bullets;
int score=0;
int scores=0;
int z;


//initializes target array
Target[] targets = new Target[5];

Player gun;
Timer t;

void setup(){
  size(1000,600);  
  background(0);
  
  score=0;
  scores=0;
  z=0;
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
     
  
  }//switch ends
}//draw ends

void reset(){
  t.time="000";
}