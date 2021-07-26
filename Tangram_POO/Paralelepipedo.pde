class Parallel extends Shape {
  protected float edge;
  protected boolean o;

  public Parallel() {
    this(50);
  }

  Parallel(float edge) {
    setEdge(edge);
  }

  @Override
 void drawShape() {
    if(ori){
      beginShape(QUADS);
      vertex(-edge/2,0);
      vertex(-edge/2,edge);
      vertex(edge/2,0);
      vertex(edge/2,-edge); 
      endShape();
    }else{
      beginShape(QUADS);
      vertex(-edge/2,-edge);
      vertex(-edge/2,0);
      vertex(edge/2,edge);
      vertex(edge/2,0);      
      endShape();
    } 
  }
  float edge() {
    return edge;
  }
  
  void setEdge(float e) {
    edge = e;
  }
}
