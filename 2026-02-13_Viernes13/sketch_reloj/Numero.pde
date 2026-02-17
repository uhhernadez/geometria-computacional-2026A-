class Numero {
  int num;
  PVector pos;
  
  Numero (int numero, float theta) {
    num = numero;
    pos = new PVector(110, 0);
    pos.rotate(theta);
  }
  
  void Dibujar () {
    fill(200,10,50);
    textSize(25);
    textAlign(CENTER, CENTER);
    text(str(num), pos.x, pos.y);
  }
}
