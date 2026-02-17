class Manecilla {
  float largo;
  float theta;
  PVector posicion;
  
  Manecilla (float largo, float num) {
    this.largo = largo;
    theta = -90.0 + 30.0*num;
    posicion = PVector.fromAngle(radians(theta));
    posicion.mult(largo);
  }

  void ajustarValor(float num) {
    theta = -90.0 + 30.0*num;
    posicion = PVector.fromAngle(radians(theta));
    posicion.mult(largo);
  }
  
  void Dibujar () {
    line(0, 0, posicion.x, posicion.y);
  }
}
