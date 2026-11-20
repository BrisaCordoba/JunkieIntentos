class Obstaculo {
  float ancho;
  float alto;
  PVector posInicial;
  PVector posFinal;
  
  
  float left;
  float right;
  float arriba;
  float abajo;
  color c = color(255, 0, 255, 40);


  Obstaculo(float xInicial, float yInicial, float xFinal, float yFinal) {
    posInicial = new PVector(xInicial*relacionWfondo, yInicial*relacionHfondo);
    posFinal = new PVector(xFinal*relacionWfondo, yFinal*relacionHfondo);
    ancho = (xFinal - xInicial)*relacionWfondo;
    alto = (yFinal - yInicial)*relacionHfondo;
    
    
    left = xInicial;
    right = xInicial + ancho;
    arriba = yInicial;
    abajo = yInicial + alto;
  }

  void mostrar() {
    fill(c);
    rect(posInicial.x, posInicial.y, ancho, alto);
    
     c = color(255, 0, 255, 40);
}
}
