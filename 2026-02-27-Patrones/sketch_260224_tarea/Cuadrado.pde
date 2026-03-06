class Cuadrado {
  PVector origen;
  PVector primero;
  PVector segundo;
  PVector tercero;
  
  color corigen;
  color cprimero;
  color csegundo;
  color ctercero;
  
  float largo;
  
  Cuadrado (float x, float y) {
    largo = 60;
    origen = new PVector (x, y);
    primero = new PVector (x + 10, y + 15);
    segundo = new PVector (x + 15, y + 22);
    tercero = new PVector (x + 20, y + 28);
    corigen = color(random(0, 255), random(0, 124), random(0, 255));
    cprimero = color(random(0, 255), random(0, 124), random(0, 255));
    csegundo = color(random(0, 255), random(0, 124), random(0, 255));
    ctercero = color(random(0, 255), random(0, 124), random(0, 255));
  }
  
  void Dibujar () {
    noStroke();
    fill(corigen);
    square (origen.x, origen.y, largo);
    fill(cprimero);
    square (primero.x, primero.y, largo - 2*10);
    fill(csegundo);
    square (segundo.x, segundo.y, largo - 2*15);
    fill(ctercero);
    square (tercero.x, tercero.y, largo - 2*20);
  }
}
