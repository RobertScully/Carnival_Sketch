  class Timer {
  String time = "000";
  int interval = 1000;//Sets interval to 1000 = 1 seconds
  int font_size;
  int start_time;
  
  //Constructor
  Timer() {
  }  
  
  void time(){
    if(gun.lives>=1){
      if (millis() - start_time >= interval) {//Uses millis function - time since program started and compares to the interval which is set to 1000 to determine seconds
        time = nf(int(time) + 1, 3); //Utility function to format time number into a string for an easily printable timer
        start_time = millis();//Sets start time = to millis
      }
    }
  }
  
  //Displays time passed since game began in the middle of the screen
  void display() {
    fill(22,22,222);//Sets Timer colour to Blue
    if(gun.lives>=1){
    textAlign(CENTER);
    text(time, 300 , 550 );//Displays timer at the center of the sketch
    }
    if(gun.lives==0){
      textAlign(CENTER);
      text("Your Time = " + time, width/2 , 200);//Displays the time you lasted below score
    }
  }
}