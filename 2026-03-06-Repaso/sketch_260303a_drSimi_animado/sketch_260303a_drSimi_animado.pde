DrSimi banda;

void setup () {
  size (500, 500);
  banda = new DrSimi();
}

void draw () {
  background(125);
  translate(width/2, height/2);
  banda.Dibujar();
}
