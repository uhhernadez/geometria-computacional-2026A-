Cuadrado cuadrado;
ArrayList<Cuadrado> cuadrados;



void setup () {
  //cuadrado = new Cuadrado();
  //cuadrado = new Cuadrado(20, 20, 10);
  //cuadrado = new Cuadrado(50, 50, 10, 0, 125, 0);
  cuadrados = new ArrayList<Cuadrado>();
  
  for (int i = 0; i < 100; i++) {
    float x = random(0, 100);
    float y = random(0, 100);
    float lado = random(10, 30);
    int r = int(random(0,255));
    int g = int(random(0,255));
    int b = int(random(0,255));
    cuadrados.add(new Cuadrado(x, y, lado, r, g, b));  
  } 
}

void draw () {
  //println(cuadrado.x + " " + cuadrado.y);
  //cuadrado.Dibujar();
  
  for (int i = 0; i < cuadrados.size(); i++) {
    Cuadrado c =  cuadrados.get(i);
    c.Dibujar(); 
  }
  
}
