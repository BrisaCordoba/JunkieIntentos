PImage fisura;
PImage ciudadog;
ArrayList <Obstaculo> obstaculos;
boolean is_w = false;
boolean is_a = false;
boolean is_s = false;
boolean is_d = false;

Jugador jugador;
Fondo fondo;

void setup() {
  size (1100, 900);
  jugador = new Jugador();
  fondo = new Fondo();
  fisura = loadImage("fisura.png");
  ciudadog = loadImage("ciudadog.jpg");
  obstaculos = new ArrayList<Obstaculo>();
  Crearmapadeobstaculos();
}
void draw() {
  println(mouseX, mouseY);
  background(255);
  fondo.mostrar();


  jugador.actualizar();
  jugador.mostrar();
  for (Obstaculo o : obstaculos) {
    o.mostrar();
  }
}
void keyPressed() {
  if (key == 'w' || key == 'W') is_w = true;
  if (key == 'a' || key == 'A') is_a = true;
  if (key == 's' || key == 'S') is_s = true;
  if (key == 'd' || key == 'D') is_d = true;
}

void keyReleased () {
  if (key == 'w' || key == 'W') is_w = false;
  if (key == 'a' || key == 'A') is_a = false;
  if (key == 's' || key == 'S') is_s = false;
  if (key == 'd' || key == 'D') is_d = false;
}
void   Crearmapadeobstaculos() {
  obstaculos.add(new Obstaculo(10, 10, 89, 62));  
  obstaculos.add(new Obstaculo(10, 147, 88, 415));
  obstaculos.add(new Obstaculo(10, 497, 90, 722));
  obstaculos.add(new Obstaculo(10, 818, 90, 818));

  obstaculos.add(new Obstaculo(178, 10, 367, 63));
  obstaculos.add(new Obstaculo(460, 10, 673, 63));
  obstaculos.add(new Obstaculo(768, 10, 949, 63));
  obstaculos.add(new Obstaculo(1041, 10, 1090, 63));

  obstaculos.add(new Obstaculo(179, 149, 238, 415));
  obstaculos.add(new Obstaculo(302, 149, 364, 415));
  obstaculos.add(new Obstaculo(461, 149, 675, 415));
  obstaculos.add(new Obstaculo(766, 149, 831, 415));
  obstaculos.add(new Obstaculo(1042, 149, 1090, 415));

  obstaculos.add(new Obstaculo(179, 507, 244, 727));
  obstaculos.add(new Obstaculo(300, 507, 365, 725));
  obstaculos.add(new Obstaculo(460, 507, 676, 725));
  obstaculos.add(new Obstaculo(769, 507, 829, 725));
  obstaculos.add(new Obstaculo(871, 143, 946, 410));
  obstaculos.add(new Obstaculo(886, 500, 953, 725));
  obstaculos.add(new Obstaculo(1042, 508, 1090, 725));

  obstaculos.add(new Obstaculo(178, 816, 369, 818));
  obstaculos.add(new Obstaculo(461, 820, 675, 818));
  obstaculos.add(new Obstaculo(768, 820, 942, 818));
  obstaculos.add(new Obstaculo(1039, 819, 1090, 815));
}
