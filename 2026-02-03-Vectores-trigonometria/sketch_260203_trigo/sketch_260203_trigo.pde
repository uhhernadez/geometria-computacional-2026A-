PVector v;
void setup () {
  size(500, 500);
  v = new PVector (0,0);
}
void drawVector(PVector v) {
  line(0, 0, v.x, v.y);
}

float magnitude(PVector v) {
   float d = sqrt(v.x*v.x + v.y*v.y);
   return d;
   // retrun sqrt(v.x*v.x + v.y*v.y);
}

float angle (PVector v) {
  return atan2(v.y, v.x);
}
void draw () {
  background (150);
  translate(width/2, height/2);
  drawVector(v);
  float d = magnitude(v);
  float theta = angle(v);
  text("Magnitud: " + d, 10, 30);  
  text("Ángulo: "+ degrees(theta), 10, 40);
  arc(0, 0, 100, 100, 0, theta);
}

void mousePressed() {
  println("Se presionó el mouse");
  v.set(mouseX - width/2, mouseY - height/2);
}

void mouseDragged() {
  println("Presiono y muevo el mouse");
  v.set(mouseX - width/2, mouseY - height/2);
}
void mouseReleased() {
  println("Cuando suelto el mouse");
  
} 
