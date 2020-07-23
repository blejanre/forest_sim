class Tree {
  
  PVector position;
  Node origin;
  DNA gene;
  
  Tree(){
    position = new PVector(350, 600);
    origin = new Node(position, this);
    gene = new DNA();
  }
  

  
  void display() {
      
      origin.display();
      

  }
}
