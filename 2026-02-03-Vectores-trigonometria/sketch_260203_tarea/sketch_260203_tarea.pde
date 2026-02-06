import garciadelcastillo.dashedlines.*;

PVector u, v;
DashedLines dash;

void setup () {
  size (500, 500);
  dash = new DashedLines(this);  
  u = new PVector (150, 50);
  v = new PVector (100, 200);
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

void drawVector (PVector a, PVector b) {
  dash.line(a.x, a.y, b.x, b.y);
}

void draw () {
  background(200);
  PVector w = PVector.add(u, v);
  drawGrid();
  drawVector(u, 0, 0, 255);
  drawVector(v, 255, 0, 0);
  drawVector(w);
  drawVector(u, w);
  drawVector(v, w);
  
  println(degrees(w.heading()));
}
