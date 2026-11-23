class Jugador {
  PVector pos;
  PVector vel;
  int ancho;
  int alto;
  
  float left;
  float right;
  float arriba;
  float abajo;

  Jugador() {
    pos = new PVector(120, 20);
    vel = new PVector(0, 0);
    ancho = 20;
    alto = 45;
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
    }
    if (pos.y <= 0) {
      pos.y = 0;
    }
    if (pos.x >= width - ancho ) {
      pos.x = width - ancho;
    }
    if (pos.y >= height - alto) {
      pos.y = height - alto;
    }
  }

  void mostrar(boolean r) {
    
    float IMancho = 65; // tamanio de la imagen del fisura
    float IMalto = 60;
    
    float rectoX = (IMancho - ancho) / 2; //calculo para que el rectangulo quede en el medio de la imagen
    float rectoY = (IMalto- alto) / 2;
    
    
    image(fisura, pos.x - rectoX, pos.y- rectoY, IMancho, IMalto); // se dibuja el rectangulo en el medio de la imagen
    //    noFill();
    //    noStroke();
    if (r) rect(pos.x, pos.y, ancho, alto);
  }


  boolean colisionaObs(Obstaculo o) {
    left = pos.x;
    right = pos.x + ancho;
    arriba = pos.y;
    abajo= pos.y + alto;


    o.left = o.posInicial.x;
    o.right = o.posInicial.x + o.ancho;
    o.arriba = o.posInicial.y;
    o.abajo = o.posInicial.y + o.alto;

    if ((right > o.left) &&
      (left < o.right) &&
      (abajo > o.arriba) &&
      (arriba < o.abajo)) {
      return  true;
    } else {
      return false;
    }
  }
}
