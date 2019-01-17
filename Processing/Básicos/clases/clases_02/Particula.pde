//clase con el nombre de la clase
class Particula {
 //variables utilizadas por la clase
  float xPos;
  float yPos;
  
//constructor
  Particula(float x, float y) {
    //inicializacion de las variables establecidas al inicio de la clase y que seran utilizadas exclusivamente por la clase
    xPos = x;
    yPos = y;
  }
  
  //metodo o funcion
  void display() {
    //instrucciones que realiza el metodo o funcion y obtiene su informacion de el constructor
    ellipse(xPos,yPos,100,100);
  }
  
}

//Live version - https://www.openprocessing.org/sketch/655040
