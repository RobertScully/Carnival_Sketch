final int stateMenu = 0;
final int stateGame = 1;
int state = stateMenu;

boolean shooting,hit;
float bullets;
int score=0;

int z;
int q;


//initializes target array
ArrayList<Target> targets = new ArrayList<Target>();
ArrayList<smallerTarget> stargets =new ArrayList<smallerTarget>();

Timer t;

void setup(){
  size(1000,600);  
  background(0);
  
  bullets=10;
  
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
  score=0;
  bullets=10;
  targets.clear();
  stargets.clear();
}