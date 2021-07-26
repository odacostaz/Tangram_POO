abstract class Shape {
  float rotation;
  float scaling;
  PVector position;
  boolean ori;
  color hue;

  Shape() {
    this(random(100, width-100), random(100, height-100), 0, 1, true,
    color(random(1,255),random(1,255),random(1,255)));
  }

  Shape(float x, float y, float r, float s, boolean o, color c) {
    position = new PVector(x, y);
    rotation = r;
    scaling = s;
    ori = o;
    hue = c;
  }

  void draw() {
    push();    
    translate(position().x, position().y);
    rotate(rotation());
    scale(scaling(), scaling());
    fill(Color());
    drawShape();
    pop();
  }

  
  abstract void drawShape();

  float scaling() {
    return scaling;
  }

  void setScaling(float s) {
    scaling = s;
  }

  float rotation() {
    return rotation;
  }

  void setRotation(float r) {
    rotation = r;
  }

  PVector position() {
    return position;
  }

  void setTranslation(float x, float y) {
    position.x = x;
    position.y = y;
  }
  
  color Color(){
    return hue;
  }
  
  void setColor(color c){
    hue = c; 
  }
  
  boolean Orientation(){
    return ori;
  }
  
  void setOrientation(boolean o){
    ori = o;
  }
}
