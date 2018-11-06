Particula part;

void setup() {
  size(600,600);
  part = new Particula();
}

void draw() {
  part.display();
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
