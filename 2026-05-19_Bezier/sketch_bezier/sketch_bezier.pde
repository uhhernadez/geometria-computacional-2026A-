BezierPrimer bp;
void setup() {
  size(500, 500);
  bp = new BezierPrimer(10, 10, 50, 50);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  stroke(#F16DB4);
  bp.Dibujar();
}
