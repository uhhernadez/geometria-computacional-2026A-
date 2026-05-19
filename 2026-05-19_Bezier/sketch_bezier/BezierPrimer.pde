class BezierPrimer {
  PVector p0;
  PVector p1;
  ArrayList<PVector> puntos;
  
  BezierPrimer (float x0, float y0, float x1, float y1) {
    p0 = new PVector(x0, y0);
    p1 = new PVector(x1, y1);
    puntos = new ArrayList<PVector>();
    Evaluar();
  }

  void Evaluar () {
    float dt = 1.0 / 1000;
    for (float t = 0.0; t <= 1; t += dt) {
      float x = p0.x + (p1.x - p0.x) * t;
      float y = p0.y + (p1.y - p0.y) * t;
      puntos.add(new PVector (x, y));
    }
  }

  void Dibujar () {
    noFill();
    beginShape();
      for (PVector p : puntos) {
        vertex(p.x, p.y);
      }
    endShape();
    circle(p0.x, p0.y, 10);
    circle(p1.x, p1.y, 10);
  }
}
