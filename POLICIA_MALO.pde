PVector pos, vel;
int largo = 80;
int alto = 60;

void setup() {
  size(800, 600);
  pos = new PVector(width/2, height/2);
  vel = new PVector(5, 0);  //avanza en x, no se mueve en y
}

void draw() {
  background(255);
  rect(pos.x - largo/2, pos.y - alto/2, largo, alto); //(mitad del size en x, mitad del size en y, 80, 60); 
  pos.add(vel);
  
  if (pos.x > width - largo/2) { //si la posicion de x es mayor a 800:
    vel.x = 0;
    vel.y = 5;
  }
  if (pos.y > height - largo/2) { //si la posicion de y es mayor a 600:
    vel.x = -5;
    vel.y = 0;
  }
    if (pos.x < 0 + largo/2) { //si la posicion en x es menor a 0:
    vel.x = 0;
    vel.y = -5;
  }
  if (pos.y < 0 + largo/2) {  //si la posicion de y es menor a 0:
    vel.x = 5;
    vel.y = 0;
  }
}
