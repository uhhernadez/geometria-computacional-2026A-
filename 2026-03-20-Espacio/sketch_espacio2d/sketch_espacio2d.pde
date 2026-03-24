Gizmo3D g;
void setup () {
  size(500, 500, P3D);
  g = new Gizmo3D(100);
}

void draw () {
  camera (20, 0, 20,
          0, 0, 0,
          0.0, 0.0, -1.0);
  // Proyección de perspectiva        
  perspective(radians(60), float(width)/float(height), 1, 100);
  // Proyección ortonormal
  // ortho(-width/2, width, -height/2, height/2);
  //ortho(-50, 50, -50, 50);
  g.Draw();  
  box(10);
}
