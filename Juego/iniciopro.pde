PImage fisura;
PImage ciudadog;
PImage poli;
ArrayList <Obstaculo> obstaculos;
boolean is_w = false;
boolean is_a = false;
boolean is_s = false;
boolean is_d = false;

float relacionWfondo=0, relacionHfondo=0;
Jugador jugador;
Fondo fondo;
Policia policia;

void setup() {
  fullScreen();
  //  size(800,600);
  jugador = new Jugador();
  fondo = new Fondo();
  policia = new Policia();

  fisura = loadImage("fisura.png");

  ciudadog = loadImage("ciudadog.jpg");

  relacionWfondo =  float(width)/float(ciudadog.width);
  relacionHfondo =  float(height)/float(ciudadog.height);

  println(relacionWfondo, relacionHfondo);
  ciudadog.resize(width, height);

  poli = loadImage("poli.png");

  obstaculos = new ArrayList<Obstaculo>();
  Crearmapadeobstaculos();
}
void draw() {
  println(mouseX, mouseY);
  background(255);
  fondo.mostrar();

  jugador.actualizar();
  jugador.mostrar();

  policia.actualizar();
  policia.mostrar();


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
  obstaculos.add(new Obstaculo(0, 0, 89, 62));
  obstaculos.add(new Obstaculo(0, 138, 88, 415));
  obstaculos.add(new Obstaculo(0, 486, 90, 722));
  obstaculos.add(new Obstaculo(10, 818, 90, 818));

  obstaculos.add(new Obstaculo(183, 0, 364, 60));
  obstaculos.add(new Obstaculo(466, 0, 670, 60));
  obstaculos.add(new Obstaculo(773, 0, 946, 60));
  obstaculos.add(new Obstaculo(1046, 0, 1135, 60));

  obstaculos.add(new Obstaculo(184, 137, 251, 411));
  obstaculos.add(new Obstaculo(290, 137, 366, 411));
  obstaculos.add(new Obstaculo(465, 137, 671, 411));
  obstaculos.add(new Obstaculo(773, 139, 839, 408));
  obstaculos.add(new Obstaculo(870, 139, 946, 216));
  obstaculos.add(new Obstaculo(890, 216, 947, 408));
  obstaculos.add(new Obstaculo(1044, 137, 1135, 411));

  // obstaculos.add(new Obstaculo(179, 507, 244, 727));
  obstaculos.add(new Obstaculo(183, 487, 252, 714));
  obstaculos.add(new Obstaculo(291, 487, 363, 714));
  obstaculos.add(new Obstaculo(465, 487, 670, 714));
  obstaculos.add(new Obstaculo(774, 487, 840, 714));
  obstaculos.add(new Obstaculo(878, 487, 945, 714));
  obstaculos.add(new Obstaculo(1046, 487, 1135, 714));
  // obstaculos.add(new Obstaculo(1042, 508, 1090, 725));

  obstaculos.add(new Obstaculo(0, 819, 84, 927));
  obstaculos.add(new Obstaculo(185, 819, 363, 927));
  obstaculos.add(new Obstaculo(465, 819, 670, 927));
  obstaculos.add(new Obstaculo(773, 819, 946, 927));
  obstaculos.add(new Obstaculo(1046, 819, 1135, 927));
}

