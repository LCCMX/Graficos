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
    float rX = random(-1,1);
    float rY = random(-1,1);
    xPos += rX;
    yPos +=rY;
  }
}//EOC
