color colorInicio;
color colorFin;

void setup() {
  size(800, 800);
  colorMode(RGB); // O HSB, que puede ser aún mejor para degradados
  colorInicio = color(255, 100, 0); // Un naranja
  colorFin = color(0, 100, 255);   // Un azul
}

void draw () {
  float t = millis() / 1000.0;
  t = t % 10;
  color colorActual = lerpColor(colorInicio, colorFin, t/10); // 0 - 1  
  
  rectMode(CENTER);
  fill(colorActual);
  translate(400,400);
  square(0,0, 380);
}
