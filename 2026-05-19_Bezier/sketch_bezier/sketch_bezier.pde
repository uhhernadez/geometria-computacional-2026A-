BezierPrimer bp;
BezierCubica bc;
Sprite gatoEspera;
void setup() {
  size(500, 500);
  bp = new BezierPrimer(10, 10, 50, 50);
  bc = new BezierCubica (200, 200, 200, 150,
                         400, 150, 400, 200 );
  gatoEspera = new Sprite();                       
}

void draw() {
  background(0);
  //translate(width/2, height/2);
  stroke(#F16DB4);
  //bp.Dibujar();
  bc.Dibujar();
  bc.Evaluar();
  gatoEspera.Dibujar();
}
