Particula [] part = new Particula[500];

void setup() {
  size(600, 600);
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particula (random(width), random(height));
  }
}

void draw() {
  for (int i = 0; i < part.length; i++) {
    part[i].display();
    part[i].move();
  }
}
