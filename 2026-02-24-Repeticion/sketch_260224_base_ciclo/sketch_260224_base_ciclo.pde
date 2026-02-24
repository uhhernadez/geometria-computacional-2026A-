//Cuadrado c;
ArrayList<Cuadrado> cuadrados;

void setup () {
  size (1000, 1000);
  cuadrados = new ArrayList<Cuadrado>();
  // Primera línea
  for (int j = 0; j <= height; j+=50) {
    for (int i = 0; i <= width; i+=50) {
      cuadrados.add(new Cuadrado(i, j));
    }
  }
}

void draw () {
  //c = new Cuadrado (10, 10);
  //c.Dibujar();
  for (Cuadrado c: cuadrados) {
    c.Dibujar();
  }
}
