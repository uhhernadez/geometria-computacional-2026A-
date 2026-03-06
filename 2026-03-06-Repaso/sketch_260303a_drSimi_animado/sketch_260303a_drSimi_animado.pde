DrSimi banda;
ArrayList<DrSimi> army;
ArrayList<PVector> pos;
PImage fondo;
int N;
void setup () {
  N = 100;
  size (1200, 812);
  banda = new DrSimi();
  fondo = loadImage("fondo.jpg");
  army = new ArrayList<DrSimi>();
  pos = new ArrayList<PVector>();
  for (int k = 0; k < N; k++) {
    army.add(new DrSimi());
    PVector v = PVector.random2D();
    v.set((v.x+1)*500, 200+ (v.y+1)*200);
    pos.add(v);
  }
  
}

void draw () {
  background(125);
  image(fondo,0,0);
  
  for (int k = 0; k < N; k++) {
    pushMatrix();
      PVector p = pos.get(k);
      println(p);
      translate(p.x, p.y);
      scale(0.5);
      army.get(k).Dibujar();     
    popMatrix();
  }
  
  translate(900, 600);  
  banda.Dibujar();
}
