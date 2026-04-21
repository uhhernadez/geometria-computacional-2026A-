Gizmo3D g;
PShape lego;
void setup () {
  size(500, 500, P3D);
  lego = loadShape("LegoMinifig.obj");
  g = new Gizmo3D(100);
}

float tz = 0.0;

void draw () {
  float t = millis () / 1000.0;
  float r = 100;
  float f = 0.2;
  float x = r * cos (2*PI*t*f);
  float z = r * sin (2*PI*t*f);
 
  background(125);
  /*camera (x, 50, z,
           0, 0, 0,
           0, -1, 0);*/
  camera(100, 100, 100,
          0, 0, tz,
          0, -1, 0);         
           
  lights();
  g.Draw();
  //scale(0.5, 2, 1);
  translate(0 ,0 ,tz);
  scale(0.5);
  shape(lego, 0, 0);
  tz += 0.2;
}
