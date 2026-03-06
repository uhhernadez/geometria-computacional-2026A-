class Pieza {
  PImage img;
  PVector offset;
  
  Pieza (String archivo, float x, float y) {
    img = loadImage(archivo);
    offset = new PVector(x, y);
  }

  void Dibujar () {
    pushMatrix();
      translate(offset.x, offset.y);
      image(img, 0, 0);
    popMatrix();
    //fill(255,0,0);
    //circle(0, 0, 10);
  }
}
