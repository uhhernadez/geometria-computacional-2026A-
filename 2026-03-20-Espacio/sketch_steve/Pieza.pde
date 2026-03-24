class Pieza {
  PVector offset;
  PVector box;
  Gizmo3D g;
  
  Pieza(float ox, float oy, float oz, float bx, float by, float bz) {
    g = new Gizmo3D(30);
    offset = new PVector(ox, oy, oz);
    box = new PVector(bx, by, bz);
  }
  
  void Dibujar () {
    pushMatrix();
      g.Draw();
      translate(offset.x,offset.y, offset.z);
      box(box.x, box.y, box.z);
    popMatrix();
  }

}
