class Tablero {
  float cuadricula;
  Tablero (float c) {
   cuadricula = c;
  }

  void Draw () {
    float offsetx = cuadricula/2.0;
    float offsetz = cuadricula/2.0;
    
    for (int x = 0; x < 8; x++) {
      int c = (x % 2 == 0) ? 0 : 1;
      for (int z = 0; z < 8; z++) {
        float xp = offsetx + x * cuadricula;
        float zp = offsetz + z * cuadricula;
        if (c == 0) {
          fill(0);
          stroke(0);
        } else {
          fill(250, 250, 250);
          stroke(255);
        }
        pushMatrix();
          translate(xp, -cuadricula/2.0, zp);
          box(cuadricula);
        popMatrix();
        c = (c == 0)? 1: 0;
      }
    }
    
  }

}
