class Leaf { 
 
  PVector position;
  PVector dimension;
  boolean done_growing;

  
  Leaf(PVector pos) {
    
    position = pos;
    dimension = new PVector (1, 1);
        
  }
  
  void display() {
    noStroke();
    fill(15,245,87);
    ellipse(position.x, position.y, 20, 20);
  }
  
   float photo() {
    

    return 0;
  }
}
