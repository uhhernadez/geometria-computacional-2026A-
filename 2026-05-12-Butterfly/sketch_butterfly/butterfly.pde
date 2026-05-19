class Butterfly {
  ArrayList<PVector> puntos;
  
  Butterfly () {
    puntos = new ArrayList<PVector>();
    Evaluar();
  }
  void Evaluar () {
    for (float t = 0.0; t <= 24*PI; t += radians(1)) {
      float a = exp( cos(t));
      float b = 2 * cos (4 * t);
      float c = sin(t/12)*sin(t/12)*sin(t/12)*sin(t/12)*sin(t/12);
      //float c = pow(sin(t/12), 5);
      float x = 50 * sin (t) * (a-b-c);
      float y = 50 * cos (t) * (a-b-c);
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
