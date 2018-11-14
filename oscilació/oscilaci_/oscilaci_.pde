class Bola {
  float x;
  float y;
  Bola(float mx, float my) {
    x=mx;
    y=my;
  }
  void pinta() {
    fill(255, 0, 0);
    ellipse(x, y, 25, 25);
  }
  void mou(float rate) {
    x = 250+150 * cos(TWO_PI * frameCount / rate);
  }
}
Bola a, b, c, d, e, f;
void setup() {

  size(500, 700);
  a= new Bola(250, 100);
  b= new Bola(250, 200);
  c= new Bola(250, 300);
  d= new Bola(250, 400);
  e= new Bola(250, 500);
  f= new Bola(250, 600);
  frameRate(60);
  noStroke();
}
void draw() {
  background(0);
  stroke(255);
  strokeWeight(4);
  line(a.x, a.y, b.x, b.y);
  line(b.x, b.y, c.x, c.y);
  line(c.x, c.y, d.x, d.y);
  line(d.x, d.y, e.x, e.y);
  line(e.x, e.y, f.x, f.y);
  stroke(255, 255, 0);
  line(a.x, a.y, c.x, c.y);
  line(b.x, b.y, d.x, d.y);
  line(c.x, c.y, e.x, e.y);
  line(d.x, d.y, f.x, f.y);
  stroke(255, 0, 255);
  line(a.x, a.y, d.x, d.y);
  line(b.x, b.y, e.x, e.y);
  line(c.x, c.y, f.x, f.y);
  noStroke();
  a.mou(60*2);
  a.pinta();
  b.mou(60*3);
  b.pinta();
  c.mou(60*4);
  c.pinta();
  d.mou(60*5);
  d.pinta();
  e.mou(60*6);
  e.pinta();
  f.mou(60*7);
  f.pinta();
}
