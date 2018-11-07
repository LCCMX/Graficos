class Particula {
  float xPos;
  float yPos;

  Particula(float x, float y) {
    xPos = x;
    yPos = y;
  }

  void display() {
    ellipse(xPos, yPos, 10, 10);
  }

  void move() {
    float r = random(-1,1);
    xPos += r;
    yPos +=r;
  }
}//EOC
