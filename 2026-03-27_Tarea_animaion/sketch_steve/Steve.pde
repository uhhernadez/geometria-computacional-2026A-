class Steve {
  Pieza pierna_izq;
  Pieza pierna_der;
  Pieza tronco;
  Pieza cabeza;
  Pieza brazo_izq;
  Pieza brazo_der;

  Steve () {
    pierna_izq = new Pieza(0,0,-15, 10, 10, 30);
    pierna_der= new Pieza(0,0,-15, 10, 10, 30);
    tronco = new Pieza(0, 0, 0, 20, 10, 30);
    cabeza = new Pieza (0, 0, 0, 20, 20 ,20);
    brazo_izq = new Pieza (0, 0, -10, 10, 10 , 30);
    brazo_der = new Pieza (0, 0 , -10, 10, 10, 30);        
  }
  
  void piernaIzq() {
    pushMatrix();
      translate(5, 0, 30);
      pierna_izq.Dibujar();
    popMatrix();
  }
  
  void piernaDer() {
    pushMatrix();
      translate(-5, 0, 30);
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
  
  void brazoIzq() {
    pushMatrix();
      translate(15, 0, 55);
      brazo_izq.Dibujar();
    popMatrix();
  
  }
  
  void brazoDer() {
    pushMatrix();
      translate(-15, 0, 55);
      brazo_der.Dibujar();
    popMatrix();
  }
  
  void Dibujar () {
    piernaIzq();
    piernaDer();  
    tronco();
    cabeza();
    brazoIzq();
    brazoDer();
  }


}
