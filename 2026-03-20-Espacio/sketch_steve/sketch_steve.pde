Gizmo3D g;
Pieza pierna_izq;
Pieza pierna_der;
void setup () {
  size(500, 500, P3D);
  g = new Gizmo3D(100);
  pierna_izq = new Pieza(0,0,-15, 10, 10, 30);
  pierna_der= new Pieza(0,0,-15, 10, 10, 30);
}

void draw () {
  background(40);
  float z = 20;
  camera (0, 100, z,
          0, 0, z,
          0.0, 0.0, -1.0);
  perspective(radians(60), float(width)/float(height), 1, 1000);
  g.Draw();
  pushMatrix();
  translate(5, 0, 30);
  pierna_izq.Dibujar();
  popMatrix();
  pushMatrix();
  translate(-5, 0, 30);
  pierna_der.Dibujar();
  popMatrix();
}
