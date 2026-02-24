//Cuadrado c;
ArrayList<Cuadrado> cuadrados;

void setup () {
  size (150, 150);
  cuadrados = new ArrayList<Cuadrado>();
  // Primera línea
  cuadrados.add(new Cuadrado(0, 0));
  cuadrados.add(new Cuadrado(50, 0));
  cuadrados.add(new Cuadrado(100, 0));
  // Seguna línea
  cuadrados.add(new Cuadrado(0, 50));
  cuadrados.add(new Cuadrado(50, 50));
  cuadrados.add(new Cuadrado(100, 50));
  // Tercera línea
  cuadrados.add(new Cuadrado(0, 100));
  cuadrados.add(new Cuadrado(50, 100));
  cuadrados.add(new Cuadrado(100, 10|0));
  
}

void draw () {
  //c = new Cuadrado (10, 10);
  //c.Dibujar();
  for (Cuadrado c: cuadrados) {
    c.Dibujar();
  }
}
