//Cuadrado c;
ArrayList<Cuadrado> cuadrados;

void setup () {
  size (1000, 1000);
  int largo = 60;
  cuadrados = new ArrayList<Cuadrado>();
  // Primera línea
  for (int j = 0; j <= height; j+=largo) {
    for (int i = 0; i <= width; i+=largo) {
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
