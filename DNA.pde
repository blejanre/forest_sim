class DNA {
  
  // STEM COLOURS
  color baby;
  color tender;
  color firm;
  color barky;
  color[] color_stages = new color[4];
  float baby_lerp;
  float tender_lerp;
  float firm_lerp;
  float[] lerp_stages = new float[3];
  
  // LEAF STUFF
  color juvenile;
  color mature;
  color autumn;
  color dead;
  PVector max_size;
  PVector min_size;
  
  DNA() {
    baby = color(105,212,93);
    tender = color(50,153,18);
    firm = color(117,97,55);
    barky = color(84,63,35);
    
    min_size = new PVector(7, 7);
    max_size = new PVector(15, 15);
  }
  
  
  void mutate() {
    
  }
  
  void random() { 
    
  }
}
