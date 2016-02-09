void background(){
  //Background function to be called in main draw
  
  noStroke();//Sets no stroke for drawing of objects as outlines are not needed
  rectMode(CENTER);//Sets mode of rectangles to center to allow easy placing of rectangles
  
  fill(color(215, 138, 6));//Lighter brown to show light streaming from users pov
  rect(500, 550, 1000, 150);//1st Rect
  fill(color(135, 89, 8));//Changes colour to darker brown to denote lack of light on tabletop
  triangle(0, 475, 75, 475, 75, 375);//Left 2nd triangle
  rect(500, 425, 850, 100);//2nd rect
  triangle(1000, 475, 925, 475, 925, 375);//right 2nd triangle
  
  fill(color(215, 138, 6));
  rect(500, 335, 850, 80);//3rd rect
  fill(color(135, 89, 8));
  triangle(75, 295, 130, 295, 125, 235);//left 4th tri
  rect(500, 265, 750, 60);//4th rect
  triangle(925, 295, 875, 295, 875, 235);//right 4th tri
  
  fill(color(215, 138, 6));
  rect(500, 205, 750, 60);//5th rect
  fill(color(135, 89, 8));
  triangle(125, 175, 175, 175, 175, 125);//left 6th tri
  rect(500, 150, 650, 50);//6th
  triangle(875, 175, 825, 175, 825, 125);//right 6th tri
  
  fill(color(215, 138, 6));
  rect(500, 50, 650, 150);//7th rect
  
  fill(0);//Fill boxes in black
  stroke(255);//Outline boxes in white
  rect(100,535,190,110);//Draw Left score box
  rect(900,535,190,110);//Draw Right score box
  
  stroke(0);
  strokeWeight(1);
  line(75,375,925,375);//Line between 2nd and 3rd rect
  line(125,235,875,235);//Line between 4th and 5th rect
  line(176,125,823,125);//Line between 6th and 7th rect
 
  strokeWeight(2);
  line(20,0,20,448);
  line(60,0,60,394);
  line(100,0,100,264);
  line(140,0,140,159);
  line(176,0,176,124);
  //Left curtain lines
  
  line(980,0,980,448);
  line(940,0,940,394);
  line(900,0,900,264);
  line(860,0,860,159);
  line(823,0,823,124);
  //Right curtain lines
  
  line(0,475,1000,475);
  line(75,295,925,295);
  line(125,175,875,175);
  noStroke();
  noFill();
  
  textSize(22);
  fill(0);
  textAlign(CENTER);
  text("Carnival Shoot'em",width/2,550);
  
}