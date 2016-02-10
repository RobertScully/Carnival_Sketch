class smallerTarget{
  boolean hit;
  float xs, ys;
  float xsT,ysT;// X and y coordinate ellipses
  int srand;
  //Smaller Target size variables
  int r4=45;
  int r5=30;
  int r6=15;
  

  smallerTarget(float _xs, float _ys){
  xs=_xs;
  ys=_ys;
  }

  void smalldisplay(){
    if (!hit) {
      smooth();
      stroke(0);
      fill(204,0,0);
      ellipse(xs,ys,r4,r4);
      noStroke();
      fill(255);
      ellipse(xs,ys,r5,r5);
      fill(204,0,0);
      ellipse(xs,ys,r6,r6);
    }
  }
  
  //Detects where a target has been hit and grants points to score depending on accuracy
  void smallcheckHit(boolean _ps,float _xs, float _ys){
    float distance = dist(_xs ,_ys,xs,ys);
    if(_ps && distance<30) {
      hit=true;
      if(distance<10) score+=20;
      if(distance<20 && distance>=10) score+=15;
      if(distance<30 && distance>=20) score+=10;
    }
  }
  
}



void smallrandomspawn(){
  int srand = int(random(1,16));
  if(srand==1)
  {
    q=150;  
  }
  else if(srand==2)
  {
    q=200;
  }
  else if(srand==3)
  {
    q=250;
  }
  else if(srand==4)
  {
    q=300;
  }
  else if(srand==5)
  {
    q=350;
  }
  else if(srand==6)
  {
    q=400;
  }
  else if(srand==7)
  {
    q=450;
  }
  else if(srand==8)
  {
    q=500;
  }
  else if(srand==9)
  {
    q=550;
  }
  else if(srand==10)
  {
    q=600;
  }
  else if(srand==11)
  {
    q=650;
  }
  else if(srand==12)
  {
    q=700;
  }
  else if(srand==13)
  {
    q=750;
  }
  else if(srand==14)
  {
    q=800;
  }
  else if(srand==15)
  {
    q=850;
  }
}