Gizmo3D g;
GridXZ gxz;
PShape torre;
PShape caballo;
PShape alfil;
PShape reina;
PShape rey;
PShape peon;

void setup () {
  size(800, 800, P3D);
  torre = loadShape("torre.obj");
  caballo = loadShape("caballo.obj");
  alfil = loadShape("alfil.obj");
  reina = loadShape("reina.obj");
  rey = loadShape("rey.obj");
  peon = loadShape("peon.obj");
  g = new Gizmo3D(20);
  gxz = new GridXZ(0.5);
}

void draw () {
  background(0);
  float fov = PI/3.0;

  perspective(fov, float(width)/float(height), 0.5, 100);
  camera(3, 3, 3,
    2.5, 0, 0,
    0, -1, 0);
  lights();
  
  gxz.Draw();
  g.Draw();
  translate(0.25, -.1, 0.25);
  shape(torre, 0, 0);
  translate(0.5, 0, 0);
  shape(caballo, 0, 0);
  translate(0.5, 0, 0);
  shape(alfil, 0, 0);
  translate(0.5, 0, 0);
  shape(reina, 0, 0);
  translate(0.5, 0, 0);
  shape(rey, 0, 0);
  translate(0.5, 0, 0);
  shape(alfil, 0, 0);
  translate(0.5, 0, 0);
  shape(caballo, 0, 0);
  translate(0.5, 0, 0);
  shape(torre, 0, 0);
  translate(0, 0, 0.5);
  shape(peon, 0, 0);
  translate(-0.5, 0, 0);
  shape(peon, 0, 0);
  translate(-0.5, 0, 0);
  shape(peon, 0, 0);
  translate(-0.5, 0, 0);
  shape(peon, 0, 0);
  translate(-0.5, 0, 0);
  shape(peon, 0, 0);
  translate(-0.5, 0, 0);
  shape(peon, 0, 0);
  translate(-0.5, 0, 0);
  shape(peon, 0, 0);
  translate(-0.5, 0, 0);
  shape(peon, 0, 0);
}
