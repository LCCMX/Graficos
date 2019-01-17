//clase con el nombre de la clase
class Particula {
 //variables utilizadas por la clase
  float xPos;
  float yPos;
  
//constructor
  Particula(float x, float y) {
    //inicializacion de las variables 
    xPos = x;
    yPos = y;
  }
  
  //metodo o funcion
  void display() {
    //instrucciones que realiza el metodo
    ellipse(xPos,yPos,10,10);
  }
	
	//metodo o funcion
	void move() {
		//instrucciones que realiza el metodo
    float r = random(-1,1);
    xPos += r;
    yPos +=r;
  }
  
}
