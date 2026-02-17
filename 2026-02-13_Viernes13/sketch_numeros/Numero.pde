class Numero {
  int num;
  PVector pos;
  
  Numero (int numero, float theta) {
    num = numero;
    pos = new PVector(100, 0);
    pos.rotate(theta);
  }
  
  void Dibujar () {
    println(pos);
    textSize(20);
    textAlign(CENTER, CENTER);
    text(str(num), pos.x, pos.y);
  }
}
