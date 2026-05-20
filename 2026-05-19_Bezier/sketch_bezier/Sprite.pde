class Sprite  {
  ArrayList<PImage> secuencia;
  float fps;
  int n;
  float ultimo;
  
  Sprite () {
    secuencia = new ArrayList<PImage> ();
    secuencia.add(loadImage("cat/Idle_1.png"));
    secuencia.add(loadImage("cat/Idle_2.png"));
    secuencia.add(loadImage("cat/Idle_3.png"));
    secuencia.add(loadImage("cat/Idle_4.png"));
    secuencia.add(loadImage("cat/Idle_5.png"));
    secuencia.add(loadImage("cat/Idle_6.png"));
    secuencia.add(loadImage("cat/Idle_7.png"));
    secuencia.add(loadImage("cat/Idle_8.png"));
    secuencia.add(loadImage("cat/Idle_9.png"));
    secuencia.add(loadImage("cat/Idle_10.png"));
    n = 0;
  }
  void Dibujar () {
    PImage img = secuencia.get(n);
    image(img, 0, 0);
    if (frameCount % 2 == 0) {
      n++;
    }
    n = (n == secuencia.size())? 0 : n;
  }


}
