class Obstaculo {
  float ancho;
  float alto;
  PVector posInicial;
  PVector posFinal;


  Obstaculo(float xInicial, float yInicial, float xFinal, float yFinal) {
    posInicial = new PVector(xInicial, yInicial);
    posFinal = new PVector(xFinal, yFinal);
    ancho = xFinal - xInicial;
    alto = yFinal - yInicial;
  }

  void mostrar() {
    fill(255, 0, 255, 40);
    rect(posInicial.x, posInicial.y, ancho, alto);
}
}
