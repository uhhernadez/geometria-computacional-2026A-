class DrSimi {
  Pieza mano_der;
  Pieza mano_izq;
  Pieza cabeza;
  Pieza brazo_izq;
  Pieza brazo_der;
  Pieza pierna_izq;
  Pieza pierna_der;
  Pieza tronco;
  
  DrSimi () {
    mano_der = new Pieza("mano_der.png", -72, -50);
    mano_izq = new Pieza("mano_izq.png", 0, -50);
    cabeza = new Pieza ("cabeza.png", -67.5, -127);
    brazo_izq = new Pieza ("brazo_izq.png", -10, -75);
    brazo_der = new Pieza ("brazo_der.png", -61, -75);
    pierna_izq = new Pieza ("pierna_izq.png",-30, -2);
    pierna_der = new Pieza ("pierna_der.png", -60, -2);
    tronco = new Pieza ("tronco.png",-185/2, -184/2);
  }

  void Dibujar () {
    float s = millis()/1000.0;
    pushMatrix();
      tronco.Dibujar();
      pushMatrix();
        translate(0, -80);
        float f = 30 * sin (2*PI*s);
        rotate(radians(f));
        cabeza.Dibujar();
      popMatrix();
      
      pushMatrix();
        translate(64,-50);
        brazo_izq.Dibujar();
        pushMatrix();
          translate(61, -50);
          mano_izq.Dibujar();
        popMatrix();
      popMatrix();
        
      pushMatrix();
        translate(-65,-50);
        brazo_der.Dibujar();
      popMatrix();  
        
      fill(255, 0, 0);
      
      
      circle(0,0, 10);
    popMatrix();
    
    
    
    
    
  //mano_der.Dibujar();
  //mano_izq.Dibujar();
  //cabeza.Dibujar();
  //brazo_izq.Dibujar();
  //brazo_der.Dibujar();
  //pierna_izq.Dibujar();
  //pierna_der.Dibujar ();
  //
  
  }


}
