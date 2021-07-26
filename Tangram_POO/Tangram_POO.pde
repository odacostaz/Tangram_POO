//este codigo ha sido escrito tomado como base 
//TangramRosetta de Jean Pierre Charalambos Hernandez 
//TANGRAM_POO_UN de Omar David Velasquez Pinto 
Shape[] shapes;
boolean drawGrid = true;
boolean lock;
color C;
int lev;
PImage fig;
String gato = "Gato";
String casa = "Casa";
String pato = "Pato";
String pez = "Pez";
String m = "Man";
String pajaro = "Pajaro";
String perro = "Perro";
String caballo = "Caballo";
String conejo = "Conejo";
String cohete = "Nave espacial";
String fr = "Freestyle";
String ad = "Crea tu figura!";
String titulo = "TANGRAM";
String ins = "INSTRUCCIONES:";
String mov = "Click izquierdo = Mover";
String rot = "Click derecho = Rotar";
String cafig = "C = Cambio de figura"; 
String paral = "Y o T = Cambio orientacion del paralelepipedo";
String res = "SPACE = Resetear el nivel";
String libre = "L = Modo de crecion libre";
String porcentaje = "Cuanto te falta";
String rotar = "R  = Rotar";

void reset(){
  shapes = new Shape[7];
  shapes[0] = new Triangle();
    shapes[0].scaling=1;
    shapes[0].position.x=180;//Triangulo grande 1
    shapes[0].position.y=220;
    shapes[0].rotation=radians(-90);
  shapes[1] = new Triangle();
    shapes[1].scaling=1;
    shapes[1].position.x=130;//Triangulo grande 2
    shapes[1].position.y=270;
    shapes[1].rotation=radians(180);
  shapes[2] = new Triangle();
    shapes[2].scaling=0.5;
    shapes[2].position.x=255;//Triangulo pequeño 1
    shapes[2].position.y=220;
    shapes[2].rotation=0;
  shapes[3] = new Triangle();
    shapes[3].scaling=0.5;
    shapes[3].position.x=180;//Triangulo pequeño 2
    shapes[3].position.y=295;
    shapes[3].rotation=radians(90);
  shapes[4] = new Triangle();
    shapes[4].scaling=0.7;
    shapes[4].position.x=255;//Triangulo mediano
    shapes[4].position.y=345;
    shapes[4].rotation=radians(-135);
  shapes[5] = new Parallel();
    shapes[5].position.x=155;//Paralelepipedo
    shapes[5].position.y=345;
    shapes[5].rotation=radians(45);
  shapes[6] = new Rect();
    shapes[6].position.x=230;//Cuadrado
    shapes[6].position.y=270;
    shapes[6].rotation=radians(45);
}

void setup() {
  size(1100,600);
  textSize(20);
  reset();
}
void drawGrid(float scale) {
  push();
  strokeWeight(1);
  for (int i=0; i<=width/scale; i++) {
    stroke(0, 0, 0, 20);
    line(i*scale, 0, i*scale, height);
  }
  for (int i=0; i<=height/scale; i++) {
    stroke(0, 0, 0, 20);
    line(0, i*scale, width, i*scale);
  }
  pop();
}

void draw() {
  background(255, 255, 255);
  
  fill(1);//TITULO
  textSize(35);
  text(titulo,465,50);
 
  textSize(28);//INSTRUCCIONES
  fill(1);
  text(ins,850,80);
  textSize(18);
  text(mov,850,120,200,180);
  text(rot,850,180,200,240);
  text(cafig,850,210,200,270);
  text(paral,850,240,200,360);
  text(res,850,330,200,450);
  text(libre,850,390,200,450);
  text(rotar,850,450,200,450);
  
  fill(250);//Tablero de juego
  rect(340,60,480,510);
  
  fill(224);//Figuras a armar
    if(lev == 0){
      fig = loadImage("CAT.jpg");
      image(fig,430,175,270,305);
      fill(1);
      textSize(20);
      text(gato,155,415,224,30);
    }
    if(lev == 1){
      fig = loadImage("HOUSE.jpg");
      image(fig,430,175,230,215);
      fill(1);
      textSize(20);
      text(casa,155,415,224,30);
    }
    if(lev == 2){
      fig = loadImage("DUCK.jpg");
      image(fig,430,175,250,225);
      fill(1);
      textSize(20);
      text(pato,155,415,224,30);
    }
    if(lev == 3){
      fig = loadImage("FISH.jpg");
      image(fig,430,175,250,240);
      fill(1);
      textSize(20);
      text(pez,155,415,224,30);
    }
    if(lev == 4){
      fig = loadImage("RUNNING MAN.jpg");
      image(fig,430,175,270,270);
      fill(1);
      textSize(20);
      text(m,155,415,224,30);
    }
    if(lev == 5){
      fig = loadImage("BIRD.jpg");
      image(fig,430,175,290,245);
      fill(1);
      textSize(20);
      text(pajaro,155,415,224,30);
    }
    if(lev == 6){
      fig = loadImage("DOG.jpg");
      image(fig,430,175,290,240);
      fill(1);
      textSize(20);
      text(perro,155,415,224,30);
    }
    if(lev == 7){
      fig = loadImage("HORSE.jpg");
      image(fig,430,175,260,300);
      fill(1);
      textSize(20);
      text(caballo,155,415,224,30);
    }
    if(lev == 8){
      fig = loadImage("RABBIT.jpg");
      image(fig,430,175,260,295);
      fill(1);
      textSize(20);
      text(conejo,155,415,224,30);
    }
    if(lev == 9){
      fig = loadImage("SPACESHIP.jpg");
      image(fig,430,175,205,290);
      fill(1);
      textSize(20);
      text(cohete,155,415,224,30);
    }
    if(lev == 10){
      fill(0);
      textSize(30);
      text(ad,86,130,224,100);
      textSize(20);
      text(fr,136,380,224,30);
    } 
  if (drawGrid)
    drawGrid(10);
  for (Shape shape : shapes)
    shape.draw();
    color negro = color(0, 0, 0);
  loadPixels();
  int contador = 0;
  for ( int i = 0; i < (width*height); i++ ) {
    color ddd =color(pixels[i]);
    if (negro==ddd ) {
      contador++;
    }
  }
  if (contador<2500 ) {
    if(lev == 10){
      lev = 10;
    }else{
      lev++;
    }
  }
  text(porcentaje,155,500);//avance
  int guardar = (19447-2500);
  int contador2=contador*100;
  int porc=(contador2/guardar);  
  text(porc,155,530);
}
void keyPressed() {
  if (key == 'g' || key == 'G'){
    drawGrid = !drawGrid;
  }
  if (key == 't' || key == 'T'){
    shapes[5].ori = true;
  }
  if (key == 'y' || key == 'Y'){
    shapes[5].ori = false;
  }
  if(key == 'c'|| key == 'C'){
    if(lev == 10){
      lev = 0;
    }else{
      lev++;
    }
  }
  if(key == 'l'|| key == 'L'){
   lev =10; 
  }
  if (key == ' '){
    reset();
  }
    C = get(mouseX,mouseY);
  for(int i = 0; i<7; i++){
     if (key== 'R'|| key=='r'){
  if(C == shapes[i].hue){
      shapes[i].rotation += radians(45);
    } 
  }
  }
}
void mousePressed(){ 
  C = get(mouseX,mouseY);
  for(int i = 0; i<7; i++){
  if(C == shapes[i].hue){
      if(mouseButton == LEFT && !lock){
        lock = true;
      }
  }
  if(mouseButton == RIGHT){
  if(C == shapes[i].hue){
      shapes[i].rotation += radians(45);
    } 
  }
  }
}
void mouseDragged(){
  for(int i=0;i<7;i++){
    if(C == shapes[i].hue){
      shapes[i].position.x = mouseX;
      shapes[i].position.y = mouseY;
    }
  }
}
void mouseReleased(){
  if(mouseButton == LEFT){
    lock = false;
  }
}

 
  
