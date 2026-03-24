class Gizmo3D {
  float l;
  
  Gizmo3D(float l) {
    this.l = l;
  }
  
  void Draw () {
    stroke(255,0,0);
    line(0, 0, 0, l, 0, 0);
    stroke(0,255,0);
    line(0, 0, 0, 0, l, 0);
    stroke(0, 0, 255);
    line(0,0,0, 0, 0, l);
  }

}
