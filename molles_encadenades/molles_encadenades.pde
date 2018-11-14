Particula[] partis = new Particula[7];
Molla[] molles = new Molla[6];

void setup() {
  size(640, 360);
  ellipseMode(RADIUS);
  
  for (int i = 0; i < partis.length; i++) {
    partis[i] = new Particula(width/2, i*40);
  }
  
  for (int i = 0; i < molles.length; i++) {
    molles[i] = new Molla(partis[i], partis[i+1], 40);
  }
}

void draw() {
  background(255); 

  for (Molla m : molles) {
    m.calculaForcaMolla();
    m.dibuixa();
  }

  for (Particula p : partis) {
    p.mou();
    p.dibuixa();
    p.drag(mouseX, mouseY);
  }
}

void mousePressed() {
  for (Particula p : partis) {
    p.clicked(mouseX, mouseY);
  }
}

void mouseReleased() {
  for (Particula p : partis) {
    p.stopDragging();
  }
}