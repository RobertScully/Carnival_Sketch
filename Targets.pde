class Target{
  float diam;
  float xT;// X coordinate ellipses
  float yT;// Y coordinate of ellipses
  int rand;
  int z;
  int r1=60;//Outer ring size
  int r2=40;//Middle ring size
  int r3=20;//Inner ring size

  Target(float rad){
  diam = rad;
  randomspawn();
  xT=z;
  yT=335;
  }

  void display(){
  smooth();
  stroke(0);
  fill(204,0,0);
  ellipse(xT,yT,r1,r1);
  noStroke();
  fill(255);
  ellipse(xT,yT,r2,r2);
  fill(204,0,0);
  ellipse(xT,yT,r3,r3);
  }
  
  //Controls location of spawning for targets
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
}