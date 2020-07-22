class Tree {
  
  PVector position;
  Node origin;
  
  
  Tree(){
    position = new PVector(350, 600);
    origin = new Node(position);
  }
  

  
  void display() {
      
      origin.display();
      

  }
}
