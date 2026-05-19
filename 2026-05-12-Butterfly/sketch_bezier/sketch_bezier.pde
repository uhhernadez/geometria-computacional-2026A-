RosesCurve rose12;
Butterfly butterfly;
BezierPrimer bp;
void setup() {
  size(500, 500);
  rose12 = new RosesCurve(2,5, 100);
  butterfly = new Butterfly();
  bp = new BezierPrimer(10, 10, 50, 50);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  stroke(#F16DB4);
  //rose12.Dibujar();
  //butterfly.Dibujar();
  bp.Dibujar();
}
