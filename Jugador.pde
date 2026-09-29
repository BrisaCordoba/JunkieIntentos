class Jugador {
  PVector pos;
  PVector vel;
  int ancho;
  int alto;

  Jugador() {
    pos = new PVector(0, 0);
    vel = new PVector(0, 0);
    ancho = 80;
    alto = 90;
  }

  void actualizar() {

    if (is_w) {
      vel.x = 0;
      vel.y = -5;
    } else if (is_a) {
      vel.x = -5;
      vel.y = 0;
    } else if (is_s) {
      vel.x = 0;
      vel.y = 5;
    } else if (is_d) {
      vel.x = 5;
      vel.y = 0;
    } else if (is_w == false || is_a == false || is_s == false || is_d == false) {
      vel.x = 0;
      vel.y = 0;
    }

    pos.add(vel);
    if (pos.x < 0 ) {
      pos.x = 0;
    } if (pos.y <= 0) {
      pos.y = 0;
    } if (pos.x >= width - ancho ) {
      pos.x = width - ancho;
    }if (pos.y >= height - alto) {
      pos.y = height - alto;
    }
  }

  void mostrar() {
    image(fisura, pos.x, pos.y, ancho, alto);
    noFill();
    noStroke();
    rect(pos.x, pos.y, ancho, alto);
  }
}
