PVector [] cubo;
PVector [] proyeccion;
float [][] Pn = {
  {1, 0, 0},
  {0, 1, 0},
  {0, 0, 0}
};

float [][] Pp = {
  {1, 0, 0},
  {0, 1, 0},
  {0, 0, 1},
};

void setup () {
  size (512, 512);
  cubo = new PVector[8];
  cubo[0] = new PVector(20, 20, 20);
  cubo[1] = new PVector(20, -20, 20);
  cubo[2] = new PVector(-20, -20, 20);
  cubo[3] = new PVector(-20, 20, 20);
  
  cubo[4] = new PVector(20, 20, -20);
  cubo[5] = new PVector(20, -20, -20);
  cubo[6] = new PVector(-20, -20, -20);
  cubo[7] = new PVector(-20, 20, -20);
  proyeccion = new PVector[8];
}

void draw () {
  background(125);
  float t = millis() / 1000.0;
  translate(width/2, height/2);
  float [][] Rx = rotacionX(radians(10*t));
  Pp = perspectiveM (100);
  // Proyección de 3D a 2D
  for (int k = 0; k < 8; k++) {
    PVector rx = Multiplicar3x3v(Rx,cubo[k]);
    rx.add(0,0,80);
    PVector pv = Multiplicar3x3v(Pp, rx);
    pv.div(pv.z);
    proyeccion[k] = pv;
  }
  // Dibujamos en 2D
  for (PVector p : proyeccion) {
    fill(255);
    circle(p.x, p.y, 10);  
  }
}

PVector Multiplicar3x3v(float [][] P, PVector v) {
  float x = P[0][0] * v.x + P[0][1] * v.y + P[0][2] * v.z;
  float y = P[1][0] * v.x + P[1][1] * v.y + P[1][2] * v.z;
  float z = P[2][0] * v.x + P[2][1] * v.y + P[2][2] * v.z;
  return new PVector(x, y, z);
}

float [][] rotacionX (float theta) {
  float [][] M = {
    {1, 0,          0},
    {0, cos(theta), -sin(theta)},
    {0, sin(theta), cos(theta)}
  };
  
  return M;
}

float [][] perspectiveM (float d) {
  float [][] P = {
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 1/d},
  };
  return P;
}

void dibujarCubo (PVector [] v) {
  dibujarLinea(v[0],v[1]);
  dibujarLinea(v[1],v[2]);
  dibujarLinea(v[2],v[3]);
  dibujarLinea(v[3],v[0]);
}

void dibujarLinea (PVector a, PVector b) {
  line (a.x, a.y, b.x, b.y);
}
