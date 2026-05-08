class RosesCurve {
  float amplitud;
  float a;
  float b;
  ArrayList<PVector> puntos;
  
  RosesCurve () {
    a = 1;
    b = 2;
    amplitud = 20;
    puntos = new ArrayList<PVector>();
    Evaluar();
  }

  RosesCurve(float a, float b, float amplitud) {
    this.a = a;
    this.b = b;
    this.amplitud = amplitud;
    puntos = new ArrayList<PVector>();
    Evaluar();
  }

  void Evaluar () {
    for (float theta = 0.0; theta <= 4*PI; theta += radians(1)) {
      float k = b / a;
      float r = amplitud * sin (k * theta);
      float x = r * cos(theta);
      float y = r * sin(theta);
      puntos.add(new PVector (x, y));
    }
  }

  int indice = 0;
  void Dibujar () {
    noFill();
    beginShape();
      for (int i = 0; i < indice; i++) {
        PVector p = puntos.get(i);
        vertex(p.x, p.y);
      }
    endShape();
    indice ++;
    indice = (indice == puntos.size())? 0: indice;
  }

}
