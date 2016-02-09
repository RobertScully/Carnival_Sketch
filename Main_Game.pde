void drawForStateGame(){
background(204,0,0);
background();  

  for (int i = targets_array.size()-1; i>=0;i--){
    Target target = targets_array.get(i);
    target.display();
    }

  for (int i=0;i<1;i++){
    targets_array.add(new Target(16));
  }
  
  if(gun.lives<=1){
    if(millis() - t.start_time >= t.interval){
    targets_array.add(new Target(16));  
    }
  }
  
  t.time();
  t.display();
  
  noCursor();
  gun.x = mouseX;
  gun.y = mouseY;
  stroke(0);  
  noFill();
  ellipse(gun.x,gun.y,20,20);
  


}//End Draw