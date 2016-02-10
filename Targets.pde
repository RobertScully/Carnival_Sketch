class Target{
  boolean hit;
  float x, y;
  float xT,yT;// X and y coordinate ellipses
  int rand;
  //int z=0;
  //Large Target size variables
  int r1=60;//Outer ring size
  int r2=40;//Middle ring size
  int r3=20;//Inner ring size
  //Smaller Target size variables
  int r4=45;
  int r5=30;
  int r6=15;
  

  Target(float _x, float _y){
  x=_x;
  y=_y;
  }

  void display(){
    if (!hit) {
      smooth();
      stroke(0);
      fill(204,0,0);
      ellipse(x,y,r1,r1);
      noStroke();
      fill(255);
      ellipse(x,y,r2,r2);
      fill(204,0,0);
      ellipse(x,y,r3,r3);
    }
  }
  
  //Detects where a target has been hit and grants points to score depending on accuracy
  void checkHit(boolean _p,float _x, float _y){
    float distance = dist(_x ,_y,x,y);
    if(_p && distance<30) {
      hit=true;
      if(distance<10) score+=10;
      if(distance<20 && distance>=10) score+=8;
      if(distance<30 && distance>=20) score+=6;
    }
  }
  
}



void randomspawn(){
  int rand = int(random(1,14));
  if(rand==1)
  {
    z=110;  
  }
  else if(rand==2)
  {
    z=175;
  }
  else if(rand==3)
  {
    z=240;
  }
  else if(rand==4)
  {
    z=305;
  }
  else if(rand==5)
  {
    z=370;
  }
  else if(rand==6)
  {
    z=435;
  }
  else if(rand==7)
  {
    z=500;
  }
  else if(rand==8)
  {
    z=565;
  }
  else if(rand==9)
  {
    z=630;
  }
  else if(rand==10)
  {
    z=695;
  }
  else if(rand==11)
  {
    z=760;
  }
  else if(rand==12)
  {
    z=825;
  }
  else if(rand==13)
  {
    z=890;
  }
}