class Fondo {
  int ancho;
  int alto;
  PVector xy;


  Fondo(){
  ancho = width;
  alto = height;
  xy = new PVector(0, 0);
}

  void mostrar(){
  image(ciudadog, 0, 0);
  }


}
