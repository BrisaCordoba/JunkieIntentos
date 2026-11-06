class Obstaculo {
  float ancho;
  float alto;
  PVector posInicial;
  PVector posFinal;



  Obstaculo(float xInicial, float yInicial, float xFinal, float yFinal) {
    posInicial = new PVector(xInicial*relacionWfondo, yInicial*relacionHfondo);
    posFinal = new PVector(xFinal*relacionWfondo, yFinal*relacionHfondo);
    ancho = (xFinal - xInicial)*relacionWfondo;
    alto = (yFinal - yInicial)*relacionHfondo;
  }

  void mostrar() {
    fill(255, 0, 255, 40);
    rect(posInicial.x, posInicial.y, ancho, alto);
}
}
