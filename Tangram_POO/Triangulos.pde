class Triangle extends Shape {

  float edge;
  
  Triangle() {
    this(50);
  }

  Triangle(float edge) {
    setEdge(edge);
  }
  
  @Override
  void drawShape() {
    beginShape(TRIANGLES);
    vertex((sqrt(2)/2)*edge,-sqrt(2)*edge);
    vertex(-(sqrt(2)/2)*edge,0);
    vertex((sqrt(2)/2)*edge,sqrt(2)*edge);
    endShape();
  }
  
  float edge() {
    return edge;
  }

  void setEdge(float e) {
    edge = e;
  }
}
