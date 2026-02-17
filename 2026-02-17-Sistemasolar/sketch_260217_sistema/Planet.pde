class Planet {
  ArrayList<Moon> moons;
  PVector center;
  float theta;
  float distance;
  float size = 50;
  
  Planet (float theta, float distance, float x, float y) {
    this.theta = theta;
    this.distance = distance;
    center = new PVector(x, y);
    
    moons = new ArrayList<Moon>();
    float cx = distance * cos(theta);
    float cy = distance * sin(theta);
    moons.add( new Moon (0, 200, cx, cy));
  }
  
  Planet (float theta, float distance, float x, float y, float size) {
    this.theta = theta;
    this.distance = distance;
    center = new PVector(x, y);
    
    moons = new ArrayList<Moon>();
    float cx = distance * cos(theta);
    float cy = distance * sin(theta);
    moons.add( new Moon (0, 200, cx, cy));
    moons.add( new Moon (PI/4, 100, cx, cy));
    this.size = size;
  }
  
  void Draw () {
    float cx = distance * cos(theta);
    float cy = distance * sin(theta);
    circle(center.x + cx, center.y + cy, size);
    for (Moon m:moons) {
      m.center.set(center.x + cx, center.y + cy);
      m.Rotate(radians(5));
      m.Draw();
    }
  } 
  void Rotate (float theta) {
    this.theta += theta;
  }
}
