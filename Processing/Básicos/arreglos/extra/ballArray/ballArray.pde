
float n = 50;
float[]posX;
float[]posY;


void setup() {
  size(600, 600);
  background(32, 160, 152);
  smooth();
  posX = new float[50];
  posY = new float[50];
  strokeWeight(10);
  stroke(0,100);
}

void draw() {
}

void mouseReleased() {
  background(32, 160, 152);

  for (int i = 0; i < n; i++ ) {
    posX[i] = random(width);
    posY[i] = random(height);
    strokeWeight(10);
    point(posX[i], posY[i]);
    strokeWeight(1);
    line(posX[i], posY[i], mouseX, mouseY);
  }
  fill(0,100);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 22, 22);
}
