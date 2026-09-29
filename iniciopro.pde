boolean is_w = false;
boolean is_a = false;
boolean is_s = false;
boolean is_d = false;

Jugador jugador;

void setup() {
  size (800, 600);
  jugador = new Jugador();
}
void draw() {
  background(255);
  jugador.actualizar();
  jugador.mostrar();
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
