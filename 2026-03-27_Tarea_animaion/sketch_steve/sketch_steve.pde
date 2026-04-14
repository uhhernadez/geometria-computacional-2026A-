Gizmo3D g;
Steve steve;
void setup () {
  size(500, 500, P3D);
  g = new Gizmo3D(100);
  steve = new Steve(0,30,0,0);
}

void draw () {
  background(40);
  float z = 50;
  camera (200, 200, z,
          0, 0, z,
          0.0, 0.0, -1.0);
  perspective(radians(60), float(width)/float(height), 1, 1000);
  g.Draw();
  steve.Dibujar();
  
}

void keyPressed() {
  float theta = steve.rotacion.z;
  float xd = 3 * cos (theta);
  float yd = 3 * sin (theta);
  if (key == 'w') {
    steve.posicion.add(xd,yd,0);
  }
  if (key == 's') {
    steve.posicion.add(-xd,-yd,0);
  }
}
