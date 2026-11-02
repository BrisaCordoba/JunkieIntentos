PImage policia;
PVector pos, vel;
int ancho = 60; int alto = 80;
int vx = 6; int vy = 0;

void setup() {
  size(800, 600);
  policia = loadImage("poli.png");
  pos = new PVector(width/2, height/2);
  vel = new PVector(vx, vy);  //avanza en x, no se mueve en y
}

void draw() {
  background(255);
  image(policia, pos.x - ancho/2, pos.y - alto/ 2, ancho, alto);
  noFill();
  noStroke();
  rect(pos.x - ancho/2, pos.y - alto/2, ancho, alto); //(mitad del size en x, mitad del size en y, 80, 60);
  pos.add(vel);

  if (pos.x >= width - ancho/2 && vel.y == 0) { //si la posicion de x es mayor a 800:
    vel.x = vy;
    vel.y =vx;
  } else if (pos.y >= height - ancho/2 && vel.x == 0) { //si la posicion de y es mayor a 600:
    vel.x = -vx;
    vel.y = vy;
  } else if (pos.x <= 0 + ancho/2 && vel.y == 0) { //si la posicion en x es menor a 0:
    vel.x = vy;
    vel.y = -vx;
  } else if (pos.y <= 0 + ancho/2 && vel.x == 0) {  //si la posicion de y es menor a 0:
    vel.x = vx;
    vel.y = vy;
  }
}

