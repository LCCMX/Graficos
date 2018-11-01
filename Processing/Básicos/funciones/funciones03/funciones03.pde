void setup() {
  size(600,600);
}

void draw() {
  
  particula(random(width),random(height));
  
}

void particula(float xPos, float yPos) {
  ellipse(xPos, yPos,10,10);
  ellipse(xPos-12,yPos,5,5);
  ellipse(xPos+12,yPos,5,5);
  ellipse(xPos,yPos-12,5,5);
  ellipse(xPos,yPos+12,5,5);
}
