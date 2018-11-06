void setup() {
}

void draw() {
}

class Particula {
  float xPos;
  float yPos;

  Particula() {
    xPos = width/2;
    yPos = height/2;
  }

  void display() {
    ellipse(xPos,yPos,10,10);
  }
}//EOC
