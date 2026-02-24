class Cuadrado {
  PVector origen;
  PVector primero;
  color corigen;
  color cprimero;
  
  float largo;
  
  Cuadrado (float x, float y) {
    largo = 50;
    origen = new PVector (x, y);
    primero = new PVector (x + 10, y + 15);
    corigen = color(random(0, 255), random(0, 124), random(0, 255));
    cprimero = color(random(0, 255), random(0, 124), random(0, 255));
  }
  
  void Dibujar () {
    noStroke();
    fill(corigen);
    square (origen.x, origen.y, largo);
    fill(cprimero);
    square (primero.x, primero.y, largo - 20);
  }
}
