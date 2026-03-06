Pieza mano_der;
Pieza mano_izq;
Pieza cabeza;
Pieza brazo_izq;
Pieza brazo_der;
Pieza pierna_izq;

void setup () {
  size (500, 500);
  mano_der = new Pieza("mano_der.png", -72, -50);
  mano_izq = new Pieza("mano_izq.png", 0, -50);
  cabeza = new Pieza ("cabeza.png", -67.5, -127);
  brazo_izq = new Pieza ("brazo_izq.png", -10, -75);
  brazo_der = new Pieza ("brazo_der.png", -61, -75);
  pierna_izq = new Pieza ("pierna_izq.png",-30, -2);
}

void draw () {
  float seconds = millis()/1000.0;
  background(125);
  translate(width/2, height/2);
  float f = 30 * sin (2*PI*seconds);
  rotate(radians(f));
  //mano_der.Dibujar();
  //mano_izq.Dibujar();
  //cabeza.Dibujar();
  //brazo_izq.Dibujar();
  //brazo_der.Dibujar();
  pierna_izq.Dibujar();
}
