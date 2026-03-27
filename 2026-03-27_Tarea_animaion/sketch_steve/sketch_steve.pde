Gizmo3D g;
Steve steve;
void setup () {
  size(500, 500, P3D);
  g = new Gizmo3D(100);
  steve = new Steve();
}

void draw () {
  background(40);
  float z = 50;
  camera (100, 100, z,
          0, 0, z,
          0.0, 0.0, -1.0);
  perspective(radians(60), float(width)/float(height), 1, 1000);
  g.Draw();
  steve.Dibujar();
}
