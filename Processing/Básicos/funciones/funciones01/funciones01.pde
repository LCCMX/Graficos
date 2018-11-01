void setup() {
  size(600,600);
}

void draw() {
  particula(20,20);
  //particula(30,30);
}

void particula(float xPos, float yPos) {
  ellipse(xPos, yPos,10,10);
}
