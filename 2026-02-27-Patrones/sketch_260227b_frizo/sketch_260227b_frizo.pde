PImage patron;
void setup () {
  size(500, 500);
  patron = loadImage("foot.png");
  int w = int(0.1 * patron.width);
  int h = int(0.1 * patron.height);
  
  patron.resize(w, h);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  fill(0);
  circle(0,0, 10);
  //patron3();
  patron1();
  rotate(radians(180));
  translate(-100,-100);
  patron1();
  //pieAdelante();
  //translate(100,0);
  //pieAdelante();
}

void patron1 () {
  pushMatrix();
    rotate(radians(90));
    /*stroke(255,0,0);
    line(0,0, 100, 0);
    stroke(0,255,0);
    line(0,0, 0, 100);*/
    image(patron, 0, 0);
    image(patron, 0, 100);
    image(patron, 0, -100);
    image(patron, 0, -200);
    image(patron, 0, -300);
  popMatrix();  
}

void patron2 () {
  patron1 ();
  scale(1, -1);
  translate(-40,-100);
  patron1 ();
}

void patron3() {
  pieAdelante();
  translate(100,0);
  pieAtras();
  translate(100,0);
  pieAdelante();
  translate(100,0);
  pieAtras();
  translate(100,0);
  pieAdelante();
  translate(100,0);
  pieAtras();
}

void pieAdelante() {
  pushMatrix();
    rotate(radians(90));
    image(patron, 0, -100);
  popMatrix();
}

void pieAtras () {
  pushMatrix();
    scale(-1, 1);
    rotate(radians(90));
    image(patron, 0, 0);
  popMatrix();
}
