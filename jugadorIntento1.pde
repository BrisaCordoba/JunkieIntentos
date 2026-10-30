PImage fisura;
PVector pos, vel;
int ancho = 60;
int alto = 80;
int vx = 5;
int vy = 0;


void setup() {
  size(800, 600);
  pos = new PVector(0, 0);
  vel = new PVector(vx, vy);
  fisura = loadImage("fisura.png");
}

void draw() {
  background(255);
  image(fisura, pos.x, pos.y, ancho, alto);
  noFill();
  noStroke();
  rect(pos.x, pos.y, ancho, alto);

  if (keyPressed) {
    if (key == 's' || key == 'S') {
      pos.y =pos.y + vx;
    }
    if (key == 'a' || key == 'A') {
      pos.x = pos.x - vx;
    }
    if (key == 'w' || key == 'W') {
      pos.y = pos.y - vx;
    }
    if (key == 'd' || key == 'D') {
      pos.x = pos.x + vx;
    }
  }
}
