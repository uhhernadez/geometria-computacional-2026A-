PVector u, v;
void setup () {
  size (500, 500);
  u = new PVector (100, 100);
  v = new PVector (150, 100);
}

void drawVector(PVector v) {
  stroke(0, 0, 0);
  line(0, 0, v.x, v.y);
  float theta = degrees(v.heading());
  text(theta, v.x, v.y);
}

void drawVector(PVector v, int r, int g, int b) {
  stroke(r, g, b);
  line(0, 0, v.x, v.y);
  float theta = degrees(v.heading());
  text(theta, v.x, v.y);
}

void drawGrid() {
  stroke(120);
  for (int i = 0; i <= height; i+= 20) {
    line(0, i, width,i);
  }
  for (int i = 0; i <= width; i+=20) {
    line(i, 0, i, height);
  }
}

void draw () {
  background(200);
  PVector w = PVector.add(u, v);
  drawGrid();
  drawVector(u, 0, 0, 255);
  drawVector(v, 255, 0, 0);
  drawVector(w);
  
  println(degrees(w.heading()));
}
