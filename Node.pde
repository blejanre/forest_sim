class Node {
  
  PVector position;
  boolean alive;
  int age;
  ArrayList<Leaf> leaves = new ArrayList<Leaf>();
  Node parent;
  ArrayList<Node> children = new ArrayList<Node>();
  boolean tip;
  int bifurc_priority;
  int thickness;
  int[] coords = new int[4];
  float strength;
  float load;
  float internode;   // distance to parent node
  float sucrose_in;  // incoming energy from leaves & children's phloem 
  float sucrose_buff;// resevoir of energy that the node holds on to
  float sucrose_out; // energy to be sent to parent node via phloem
  float vigour;      // not exactly sure how this will be implemented
  float thirst;      // how much energy the node will take out of the stream
  float hunger;      // how much food the node will take out of the stream
  int comfort_ang;
  int current_ang;
  color bark;
  
  Node(PVector mama_pos){
    
    position = mama_pos;
    alive = true;
    tip = true;
    age = 0;
    
    thickness = 1;
    strength = 1;
    load = 0;
    internode = 0;
    // initial vigour has to do with parental vigour?
    // same with hunger and thirst?
    // bark = juvenile bark colour from dna...
    }
    
  Node(Node mama_node, PVector mama_pos){
    
    position = mama_pos;
    alive = true;
    tip = true;
    age = 0;
    parent = mama_node;
    
    for (int i=0; i<2; i++) {
      leaves.add(new Leaf());
    }
      
    thickness = 1;
    strength = 1;
    load = 0;
    internode = 0;
    // initial vigour has to do with parental vigour?
    // same with hunger and thirst?
    // bark = juvenile bark colour from dna...
    }
    
  void update() {
   
    do_leaves();
    move_sap();
    grow();
    cleanup();
    mature();
    
  }
  
  void display() {
    noStroke();
    fill(0);
    ellipse(position.x, position.y, 50, 50);

  }
  
  /////////////////////////////////////////////////////
  
  void do_leaves() {
    
  }
  
  void move_sap() {

  }
  
  void phloem() {
    
    float yield = 0;
    
    for (Leaf i : leaves) {
      yield += i.photo();     
    }
    
    for (Node i : children) {
      yield += i.sucrose_out;
      i.sucrose_out = 0;
    }
   
   sucrose_in += yield;
  }
  
  void grow() {

  }
  
  void new_node() {

  }
  
  void cleanup() {

  }
  
  void mature() {
    
    age += 1;
    // colour- vigorous branches change colour more slowly
    // amount = base dna amount / vigour (or whatever)
    // bark = lerpColor(bark, dna color for next maturity stage, amount)
  }
}
