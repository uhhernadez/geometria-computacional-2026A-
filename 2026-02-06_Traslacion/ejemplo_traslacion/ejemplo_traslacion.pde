Cuadrado cuadrado;
float x, y;

void setup () {
  size(400, 400);
  cuadrado = new Cuadrado (200, 200, 30); 
  x = cuadrado.x;
  y = cuadrado.y;
  //frameRate(60);
}

void draw () {
  cuadrado.Dibujar();  
  //cuadrado.Trasladar(30, 0);
  //cuadrado.Dibujar();
  //cuadrado.Trasladar(0, 30);
  //cuadrado.Trasladar(30, 30);
  float dx = x - cuadrado.x;
  float dy = y - cuadrado.y;
  float v = 1;
  cuadrado.Trasladar(v*dx, v*dy);
  fill(0, 255, 0);
  circle(x,y,10);
  square(200, 200, 30);
}

void mousePressed() {
  x = mouseX;
  y = mouseY;
}
