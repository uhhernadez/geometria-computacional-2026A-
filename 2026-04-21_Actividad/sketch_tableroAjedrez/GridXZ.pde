class GridXZ {
  float l;

  GridXZ(float l) {
    this.l = l;
  }

  void Draw () {
    float xmin = -10, xmax = 10;
    float zmin = -10, zmax = 10;
    stroke(255);
    for (float x = xmin; x <= xmax; x += l) {
      line (x, 0, zmin, x, 0, zmax);
    }
    for (float z = zmin; z <= zmax; z += l) {
      line (xmin, 0, z, xmax, 0, z);
    }
  }
}
