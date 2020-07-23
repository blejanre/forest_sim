class Node {
  
  Tree tree;
  PVector position;
  boolean alive;
  int age;
  ArrayList<Leaf> leaves = new ArrayList<Leaf>();
  Node parent;
  ArrayList<Node> children = new ArrayList<Node>();
  boolean tip;
  int bifurc_priority;
  int thickness;
  PVector[] coords = new PVector[2];
  float strength;
  float load;
  float internode;   // distance to parent node
  PVector translation; 
  float glucose_in;  // incoming energy from leaves & children's phloem 
  float glucose_buff;// resevoir of energy that the node holds on to
  float glucose_out; // energy to be sent to parent node via phloem
  float vigour;      // not exactly sure how this will be implemented
  float thirst;      // how much energy the node will take out of the stream
  float hunger;      // how much food the node will take out of the stream
  int comfort_ang;
  int current_ang;
  color bark;
  
  Node(PVector mama_pos, Tree family_tree){ //each tree object's only initial node. No parent
    
    tree = family_tree;
    
    position = mama_pos;
    alive = true;
    tip = true;
    age = 0;
    glucose_buff = 100;
    
    thickness = 1;   
    PVector a = new PVector(mama_pos.x-1, mama_pos.y);
    PVector b = new PVector(mama_pos.x+1, mama_pos.y);
    coords[0] = a;
    coords[1] = b;
    
    strength = 1;
    load = 0;
    internode = 1;
    translation = new PVector(0, 0);
    vigour = 50;
    // initial vigour has to do with parental vigour?
    // same with hunger and thirst?
    // bark = juvenile bark colour from dna...
    }
    
  Node(Node mama_node, PVector mama_pos, Tree family_tree){
    
    position = mama_pos;
    alive = true;
    tip = true;
    age = 0;
    parent = mama_node;
    tree = family_tree;
    
    for (int i=0; i<2; i++) {
      leaves.add(new Leaf(mama_pos));
    }
      
    thickness = 1;
    strength = 1;
    load = 0;
    internode = 0;
    // initial vigour has to do with parental vigour?
    // same with hunger and thirst?
    bark = tree.gene.baby;
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
    ellipse(position.x, position.y, 15, 15);

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
      yield += i.glucose_out;
      i.glucose_out = 0;
    }
   
   glucose_in += yield;
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
