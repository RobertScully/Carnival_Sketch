final int stateMenu = 0;
final int stateGame = 1;
//final int stateLongGame = 2;
int state = stateMenu;

boolean shooting=false;
boolean hit=false;
int bullets;
int score=0;
float topscore1,topscore2,topscore3;

int lastscore=0;
int q,z;

String[] topscores = new String[3];


//Initializes Target Arrays
ArrayList<Target> targets = new ArrayList<Target>();
ArrayList<smallerTarget> stargets =new ArrayList<smallerTarget>();

//Initializes timer
Timer t;

void setup(){
  size(1000,600);  
  background(0);
  frameRate=60;
  
  bullets=10;
  
  t = new Timer(); 
  
  
  topscores = loadStrings("Highscores.txt");
  topscore1 = Float.parseFloat(topscores[0]);
  topscore2 = Float.parseFloat(topscores[1]);
  topscore3 = Float.parseFloat(topscores[2]);
}//End Setup

void draw(){//Start Draw

  switch(state) {//Start switch
    case stateMenu:
      drawForStateMenu();
      break;
    
    case stateGame:
      drawForStateGame();
      break;
   // case stateLongGame:
    //  drawForStateLongGame();
     // break;
     
  
  }//switch ends
}//draw ends

void reset(){
  t.time="000";
  frameCount=0;
  score=0;
  bullets=10;
  targets.clear();
  stargets.clear();
}