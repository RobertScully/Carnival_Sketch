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
  text("Controls",width/2,500);
  textSize(15);
  text("Left Click on a target to shoot it",width/2,520);
  text("Right Click to reload your gun",width/2,540);
}