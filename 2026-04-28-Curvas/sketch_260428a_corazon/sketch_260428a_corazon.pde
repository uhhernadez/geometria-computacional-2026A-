ArrayList<PVector> points;

void setup () {
  size (500, 550);
  points = new ArrayList<PVector>();
}

void draw () {
  background(0);
  //float dt = PI/10.0;
  float dt = radians(1);
  float R = 5*cos(2*PI*(millis()/1000.0)*0.4) + 10;
  
  for (float t = 0; t <= 2*PI; t+= dt) {
    //float x = R * cos (t) + width/2;
    float x = 16 * sin (t) * sin (t) * sin (t);  
    //float y = R * sin (t) + height/2;
    float y = 13 * cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t);
    PVector point = new PVector(x, y, 0);
    point.mult(R);
    point.rotate(radians(180));
    point.add(width/2, height/2);
    points.add(point);
  }
  noFill();
  stroke(255);
  beginShape();
  for (int i = 0; i < points.size(); i++) {
    PVector p = points.get(i);
    vertex(p.x, p.y);  
  }
  endShape();
  points.clear();
}
