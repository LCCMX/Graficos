//clase con el nombre de la clase
class Particula {
	//variables utilizadas por la clase
  float xPos;
  float yPos;
	//constructor
  Particula(float x, float y) {
		//inicializacion de variables utilizadas en la clase
    xPos = x;
    yPos = y;
  }
	//metodo
  void display() {
		//instrucciones realizadas en el metodo
    ellipse(xPos, yPos, 10, 10);
  }
	//metodo
  void move() {
		//instrucciones realizadas en el metodo
    float rX = random(-1,1);
    float rY = random(-1,1);
    xPos += rX;
    yPos +=rY;
  }
}
