Reloj reloj;
Manecilla horas;
Manecilla minutos;

void setup () {
  size (400, 400);
  reloj = new Reloj();
  horas = new Manecilla (50, 1.9);
  minutos = new Manecilla (90, 8);
}

void draw () {
  background(200);
  translate(width/2, height/2);
  reloj.Dibujar();
  horas.Dibujar();
  minutos.Dibujar();
  //float t = millis() / 1000.0;
  //horas.ajustarValor(t % 12.0);
}
