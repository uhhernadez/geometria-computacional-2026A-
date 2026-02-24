class Moon {
  PVector center;
  float theta;
  float distance;
  Moon (float theta, float distance, float x, float y) {
    center = new PVector(x, y);
    this.theta = theta;
    this.distance = distance;
  }
  
  void Draw () {
    PVector pos = PVector.fromAngle(theta);
    pos.mult(distance);
    circle(center.x+pos.x, center.y+pos.y, 20);
  }
  
  void Rotate (float theta) {
    this.theta += theta;
    // this.theta = this.theta + theta;
  }
  
}
