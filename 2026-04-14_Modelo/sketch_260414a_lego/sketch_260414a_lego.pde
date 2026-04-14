PShape lego;
void setup () {
  size(500, 500, P3D);
  lego = loadShape("LegoMinifig.obj");
}

void draw () {
  shape(lego, 0, 0);
}
