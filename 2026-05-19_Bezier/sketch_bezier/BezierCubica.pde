class BezierCubica {
  PVector p0;
  PVector p1;
  PVector p2;
  PVector p3;
  ArrayList<PVector> puntos;
  
  BezierCubica (float x0, float y0,
                float x1, float y1,
                float x2, float y2,
                float x3, float y3) {
    p0 = new PVector (x0, y0);
    p1 = new PVector (x1, y1);
    p2 = new PVector (x2, y2);
    p3 = new PVector (x3, y3);
    puntos = new ArrayList<PVector> ();     
    Evaluar();
  }

  void Evaluar () {
    puntos.clear();
    float dt = 1.0/1000.0;
    for (float t = 0.0; t <= 1; t += dt) {
      float a = pow(1 - t, 3);
      float b = pow(1 - t, 2);
      float c = t * t * (1-t);
      float d = t * t * t;
      float x = p0.x * a + 3 * t * p1.x * b + 3 * p2.x * c + p3.x * d;
      float y = p0.y * a + 3 * t * p1.y * b + 3 * p2.y * c + p3.y * d;
      puntos.add(new PVector(x,y));
    }
  }
  
  void Dibujar () {
    noFill();
    beginShape();
      for (PVector p: puntos) {
        vertex(p.x, p.y);
      }
    endShape();
    fill(250);
    circle(p0.x, p0.y, 10);
    circle(p1.x, p1.y, 10);
    circle(p2.x, p2.y, 10);
    circle(p3.x, p3.y, 10);
    PVector pm = new PVector(mouseX, mouseY);
    if (mousePressed) {
      if (PVector.dist(p0, pm) < 10) {
        fill (255, 0, 0);
        circle(p0.x, p0.y, 10);
        p0.set(pm);
      } else if (PVector.dist(p1, pm) < 10) {
        fill (255, 0, 0);
        circle(p1.x, p1.y, 10);
        p1.set(pm);
      } else if (PVector.dist(p2, pm) < 10) {
        fill (255, 0, 0);
        circle(p2.x, p2.y, 10);
        p2.set(pm);
      } else if (PVector.dist(p3, pm) < 10) {
        fill (255, 0, 0);
        circle(p3.x, p3.y, 10);
        p3.set(pm);
      }
    }
  }
  
}
