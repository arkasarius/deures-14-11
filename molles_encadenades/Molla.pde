class Molla { 
  // Dues masses a cada extrem
  Particula a;
  Particula b;
  float lon; // longitud en repos 
  float k = 0.2; // constant de la molla


  // Constructora
  Molla(Particula aa, Particula bb, int l) {
    a = aa;
    b = bb;
    lon = l;
  } 

  // Calcula la forca de la molla i l'aplica a les dues particules
  void calculaForcaMolla() {
    PVector f =PVector.sub(a.posicio, b.posicio);
    float d = f.mag(); 
    float s = d - lon;
    f.normalize(); 
    f.mult(-1*k*s);
    if (!a.dragging) {
      a.applyForce(f);
    }
    f.mult(-1);
    if (!b.dragging) {
      b.applyForce(f);
    }
  }

  void dibuixa() {
    stroke(0);
    line(a.posicio.x, a.posicio.y, b.posicio.x, b.posicio.y);
  }
}
