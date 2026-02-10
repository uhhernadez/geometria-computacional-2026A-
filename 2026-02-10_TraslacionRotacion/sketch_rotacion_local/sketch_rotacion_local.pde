Cuadrado c1, c2;

void setup() {
  size(400, 400);
  c1 = new Cuadrado();
}

void draw() {
  background(220);
  translate(width/2, height/2);
  c1.Traslacion(0.1,0.1);
  c1.RotacionLocal(radians(10));
  c1.Dibujar();
}
