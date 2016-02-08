void setup(){
background();
size(1000,600);
}

//Background function to be called in main draw
void background(){
  
  noStroke();
  rectMode(CENTER);

  fill(color(215, 138, 6));//Lighter brown to show light on 
  rect(500, 550, 1000, 150);//1st Rect
  fill(color(135, 89, 8));//Changes colour to darker to denote light for 3d effect
  triangle(0, 475, 50, 475, 50, 375);//Left 2nd triangle
  rect(500, 425, 900, 100);//2nd rect
  triangle(1000, 475, 950, 475, 950, 375);//right 2nd triangle
  
  fill(color(215, 138, 6));
  rect(500, 335, 900, 80);//3rd rect
  fill(color(135, 89, 8));
  triangle(50, 295, 130, 295, 125, 235);//left 4th tri
  rect(500, 265, 750, 60);//4th rect
  triangle(950, 295, 875, 295, 875, 235);//right 4th tri
  
  
  fill(color(215, 138, 6));
  rect(500, 205, 750, 60);//5th rect
  fill(color(135, 89, 8));
  triangle(125, 175, 200, 175, 200, 125);//left 6th tri
  rect(500, 150, 600, 50);//6th
  triangle(875, 175, 800 , 175, 800, 125);//right 6th tri
  
  fill(color(215, 138, 6));
  rect(500, 50, 600, 150);//7th rect
  
  fill(255);
  stroke(0);
  rect(100,535,190,110);
  rect(900,535,190,110);
}