Numero tres, cuatro, cinco, seis;
Numero siete, ocho, nueve, diez;
Numero once, doce, uno, dos;

void setup () {
  size (400, 400);
  tres = new Numero(3, 0);
  cuatro = new Numero(4, radians(30));
  cinco = new Numero(5, radians(60));
  seis = new Numero(6, radians(90));
  siete = new Numero(7, radians(120));
  ocho = new Numero (8, radians(150));
  nueve = new Numero (9, radians(180));
  diez = new Numero (10, radians(210));
  once = new Numero (11, radians(240));
  doce = new Numero (12, radians(270));
  uno = new Numero (1, radians(300));
  dos = new Numero (2, radians(330));
}

void draw () {
  translate(width/2, height/2);
  tres.Dibujar();
  cuatro.Dibujar();
  cinco.Dibujar();
  seis.Dibujar();
  siete.Dibujar();
  ocho.Dibujar();
  nueve.Dibujar();
  diez.Dibujar();
  once.Dibujar();
  doce.Dibujar();
  uno.Dibujar();
  dos.Dibujar();
}
