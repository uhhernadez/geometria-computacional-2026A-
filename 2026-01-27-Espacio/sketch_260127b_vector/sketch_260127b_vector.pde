PVector p;
ArrayList<PVector> poly;

void setup () {
  p = new PVector(30, 50);
  poly = new ArrayList<PVector>();
  poly.add(new PVector(30, 30));
  poly.add(new PVector(60, 30));
  poly.add(new PVector(60, 60));
  poly.add(new PVector(30, 60));
}
void draw () {
  println(p.x + " " + p.y);
  drawPoint(p);
  beginShape();
  for (PVector v: poly) {
    vertex(v.x, v.y);
  }
  endShape();
}

void drawPoint(PVector p) {
  point(p.x, p.y);
}
