RosesCurve rose12;
Butterfly butterfly;
void setup() {
  size(500, 500);
  rose12 = new RosesCurve(2,5, 100);
  butterfly = new Butterfly();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  stroke(#F16DB4);
  //rose12.Dibujar();
  butterfly.Dibujar();
}
