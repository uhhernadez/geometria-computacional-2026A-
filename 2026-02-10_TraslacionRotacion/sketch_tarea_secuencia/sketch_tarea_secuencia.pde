Cuadrado cuadrado;
PVector[] puntos = new PVector[5];
int indicePunto = 0;

void setup() {
  size(400, 400);
  // Puntos de destino
  puntos[0] = new PVector(50, 50);
  puntos[1] = new PVector(300, 50);
  puntos[2] = new PVector(300, 300);
  puntos[3] = new PVector(50, 300);
  puntos[4] = new PVector(175, 175);

  cuadrado = new Cuadrado(150, 20, 50, 150, 0, 0);
  frameRate(1);
}

void draw() {
  background(220);

  for (PVector p : puntos) {
    stroke(200, 0, 0, 100);
    noFill();
    rect(p.x, p.y, cuadrado.lado, cuadrado.lado);
  }

  cuadrado.Dibujar();
  float dx = puntos[0].x - cuadrado.x;
  float dy = puntos[0].y - cuadrado.y;
  // Aquí llegamos al punto 1
  cuadrado.Traslacion(dx, dy);
  cuadrado.Dibujar();
  
  // Aquí llegamos al punto 5
  dx = puntos[4].x - cuadrado.x;
  dy = puntos[4].y - cuadrado.y;
  cuadrado.Traslacion(dx, dy);
  cuadrado.Dibujar();
}
