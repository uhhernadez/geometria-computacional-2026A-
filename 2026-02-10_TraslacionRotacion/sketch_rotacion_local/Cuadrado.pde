class Cuadrado {
  PVector centro;
  ArrayList<PVector> vertices;
  float lado; // Tamaño del lado
  color relleno;
  
  Cuadrado () {
    centro = new PVector(0,0);
    lado = 50;
    vertices = new ArrayList<PVector>();
    vertices.add(new PVector(lado/2, lado/2));
    vertices.add(new PVector(-lado/2, lado/2));
    vertices.add(new PVector(-lado/2, -lado/2));
    vertices.add(new PVector(lado/2, -lado/2));
    relleno = color (100, 0, 0);
  }
   
  void Dibujar () {
    fill(relleno);
    beginShape();
    for (PVector p: vertices) {
      vertex(centro.x + p.x, centro.y + p.y);
    }
    endShape(CLOSE);
  }
  
  void Traslacion(float dx, float dy) {
    centro.add(dx, dy);
  }
  
  void RotacionLocal (float theta) {
     for (PVector p : vertices) {
       float x = p.x * cos(theta) + p.y * sin(theta);
       float y = - p.x * sin(theta) + p.y * cos(theta);
       p.set(x,y);
     }
  }
}
