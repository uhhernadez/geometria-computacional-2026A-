class Steve {
  Pieza pierna_izq;
  Pieza pierna_der;
  Pieza tronco;
  Pieza cabeza;
  Pieza brazo_izq;
  Pieza brazo_der;
  PVector posicion;
  PVector rotacion;
  Steve (float x, float y, float z, float theta) {
    pierna_izq = new Pieza(0,0,-15, 10, 10, 30);
    pierna_der= new Pieza(0,0,-15, 10, 10, 30);
    tronco = new Pieza(0, 0, 0, 20, 10, 30);
    cabeza = new Pieza (0, 0, 0, 20, 20 ,20);
    brazo_izq = new Pieza (0, 0, -10, 10, 10 , 30);
    brazo_der = new Pieza (0, 0 , -10, 10, 10, 30);
    posicion = new PVector(x, y, z);
    rotacion = new PVector(0, 0, theta);
  }
  
  void piernaIzq(float theta) {
    pushMatrix();
      translate(5, 0, 30);
      rotateX(theta);
      pierna_izq.Dibujar();
    popMatrix();
  }
  
  void piernaDer(float theta) {
    pushMatrix();
      translate(-5, 0, 30);
      rotateX(theta);
      pierna_der.Dibujar();
    popMatrix();
  }
  
  void tronco () {
    pushMatrix();
      translate(0, 0, 45);
      tronco.Dibujar();
    popMatrix();
  }
  
  void cabeza() {
    pushMatrix();
      translate(0, 0, 70);
      cabeza.Dibujar();
    popMatrix();
  }
  
  void brazoIzq(float theta) {
    pushMatrix();
      translate(15, 0, 55);
      rotateX(theta);
      brazo_izq.Dibujar();
    popMatrix();
  }
  
  void brazoDer(float theta) {
    pushMatrix();
      translate(-15, 0, 55);
      rotateX(theta);
      brazo_der.Dibujar();
    popMatrix();
  }
  
  void Dibujar () {
    float t = millis () / 1000.0;
    float theta = 45 * cos (2*PI*t);
    float alpha = 45 * sin (2*PI*t);
    pushMatrix();
      translate(posicion.x, posicion.y, posicion.z);
      rotateZ(rotacion.z-radians(90));
      piernaIzq(radians(theta));
      piernaDer(radians(-theta));  
      tronco();
      cabeza();
      brazoIzq(radians(alpha));
      brazoDer(radians(-alpha));
   popMatrix();
  }


}
