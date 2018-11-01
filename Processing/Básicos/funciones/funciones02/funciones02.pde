void setup() {
  size(600,600);
}

void draw() {
  background(0);
  particula(random(width),random(height));
  
}

void particula(float xPos, float yPos) {
  ellipse(xPos, yPos,10,10);
  
}
