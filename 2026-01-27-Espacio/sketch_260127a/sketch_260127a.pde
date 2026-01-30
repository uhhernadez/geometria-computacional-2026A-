float x, y;

void setup () {
  size(500, 500);
  //size(500, 500, P3D);
  x = 0;
  y = 10;
}

void draw () {
  background(200);
  point(x, y);
  x += 0.5; // x = x + 0.5;
  
  line(0, 0, 50, 100);
  line(0, 0, 10, 50, 90, 10);
  ellipse(50, 50, 20,20 );
  circle(100, 100, 40);
  beginShape();
    vertex(30, 30);
    vertex(60, 30);
    vertex(60, 60);
    vertex(30, 60);
  endShape(CLOSE);
}
