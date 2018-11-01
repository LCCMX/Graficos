void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 20; i < width; i+=20) {
    for (int j = 20; j< height; j+=20) {
      particula(i, j);
    }
  }
}

void particula(float xPos, float yPos) {
  float r = random(5, 15);
  ellipse(xPos, yPos, r, r);
  ellipse(xPos-r, yPos, r/2, r/2);
  ellipse(xPos+r, yPos, r/2, r/2);
  ellipse(xPos, yPos-r, r/2, r/2);
  ellipse(xPos, yPos+r, r/2, r/2);
}
