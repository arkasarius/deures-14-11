class P {
  PVector p;
  PVector v;
  PVector a;
  P() {
    p = new PVector(random(width),random(height));
    v = new PVector(0,0); 
    a = new PVector(0,0);
  }
  void display() {
    fill(0,235,0);
    ellipse(p.x, p.y, 1, 1);
  }
  void move(PVector fo) {
    PVector d = fo.copy();
    a.add(d);
    v.add(a);
    p.add(v);
    a.set(0,0);
  }
}
PVector p;
PVector v;
PVector a;
PVector foratNegre;
float CG;
int num=500;
ArrayList<P> llista =new ArrayList<P>();
void setup() {
  size(1000, 700);
  noStroke();
  background(0, 0, 0);
  p = new PVector();
  v = new PVector();
  a = new PVector();
  foratNegre = new PVector (width/2, height/2);
  CG = 1;
  for (int i=0; i<num; i++) {
    llista.add(new P());
  }
  frameRate(100);
}
void draw() {
  fill(255);
  ellipse(foratNegre.x, foratNegre.y, 20, 20);
  fill(255, 0, 0);
  ellipse(p.x, p.y, 10, 10);
  for (P a : llista) {
    a.display();
    PVector k= new PVector();
    k.set(width/2, height/2);
    k.sub(a.p);
    float force = CG*(1*10)/pow(k.mag(), 2);
    k.mult(force);
    a.move(k);
  }
  fill(0, 0, 0,20);
  rect(-1,-1,width+1,height+1);
}
