class DNA {
  
  color baby;
  color tender;
  color firm;
  color barky;
  color[] color_stages = new color[4];
  float baby_lerp;
  float tender_lerp;
  float firm_lerp;
  float[] lerp_stages = new float[3];
  
  DNA() {
    baby = color(105,212,93);
    tender = color(50,153,18);
    firm = color(117,97,55);
    barky = color(84,63,35);
  }
}
