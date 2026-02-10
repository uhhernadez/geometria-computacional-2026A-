class Cuadrado {
  float x; // Coordenada en X
  float y; // Coordanada en Y
  float lado; // Tamaño del lado
  color relleno;
  
  Cuadrado () {
    x = 0;
    y = 0;
    lado = 10;
    relleno = color (100, 0, 0);
  }
   
  Cuadrado (float x, float y, float lado) {
    this.x = x;
    this.y = y;
    this.lado = lado;
    relleno = color (100, 0, 0);
  } 
 
  Cuadrado (float x, float y, float lado, int r, int g, int b) {
    this.x = x;
    this.y = y;
    this.lado = lado;
    relleno = color (r, g, b);
  } 
 
  void Dibujar () {
    fill(relleno);
    square(x, y, lado);
  }
  
  void Traslacion(float dx, float dy) {
    x = x + dx;
    y = y + dy;
    // x += dx;
    // y += dy;
  }
}
