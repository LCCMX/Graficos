//Clase
class Particula {
  //Datos utilizados por la clase
  float xPos;
  float yPos;
  //Constructor
  Particula(float x, float y) {
    //Inicializacion de datos
    xPos = x;
    yPos = y;
  }
  //Metodo
  void display() {
    //Instrucciones del metodo
    ellipse(xPos, yPos, 10, 10);
  }
  //Metodo
  void move() {
  //Instrucciones del metodo
    float rX = random(-1,1);
    float rY = random(-1,1);
    xPos += rX;
    yPos +=rY;
  }
}
