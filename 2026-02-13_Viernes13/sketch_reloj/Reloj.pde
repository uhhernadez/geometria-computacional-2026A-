class Reloj {
  ArrayList<Numero> numeros;

  Reloj () {
    numeros = new ArrayList<Numero>();
    for (int i= 1; i <= 12; i++) {
      numeros.add( new Numero(i, radians(-60 + 30*(i-1))));
    }
  }
  
  void Dibujar () {
    for (Numero n : numeros) {
      n.Dibujar();
    }
  }
}
