void drawForStateMenu() {
  background(204,0,0);
  background();
  rectMode(CENTER);
  stroke(204,0,0);
  fill(0);
  rect(width/2,height/2,500,500);
  textSize(22);
  fill(255);
  textAlign(CENTER);
  text("Welcome to Carnival Shoot'em",width/2,100);
  text("Press 1 to START",width/2,150);
  textSize(15);
  text("You have 10 seconds to score as many points as possible",width/2,200);
  text("Large Targets Bullseye is worth 10 Points,",width/2,230);
  text("inner ring is worth 8 and outer ring is worth 6",width/2,250);
  text("Small Targets Bullseye is worth 20 points, ",width/2,280);
  text("inner ring is worth 15 and outer ring is worth 10",width/2,300);
  
  
  
  fill(200);
  textSize(15);
  text("Your last score was: " +lastscore, width/2,350);//Displays Score of current Game
  
  text("Controls",width/2,500);
  textSize(15);
  text("Left Click on a target to shoot it",width/2,520);
  text("Right Click or Press R to reload your gun",width/2,540);
  
  bullets=10;//Sets bullets to 10 to ensure player spawns with full ammo
}