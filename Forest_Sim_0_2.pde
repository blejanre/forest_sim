//second practice sketch for the forest simulator. mission build a tree

Tree ben = new Tree();

void setup() {
  size(700, 700);
  
  //sky
  background(0);//(120, 150, 255);
  
  //ground
  noStroke();
  fill(110,63,23);
  rect(0, 550, width, 150);
  
  ////clouds
  //fill(250);
  //rect(width/8, height/5, 150, 75);
  
  //fill(250);
  //rect(width/1.5, height/4, 150, 75);
  
}

void draw() {
  ben.display();
}
