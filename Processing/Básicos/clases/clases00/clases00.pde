//Clases 00

//clase con el nombre de la clase
class Particula {
 //variables utilizadas por la clase
  float xPos;
  float yPos;
  
//constructor
  Particula() {
    //inicializacion de las variables establecidas al inicio de la clase y que seran utilizadas exclusivamente por la clase
    xPos = 300;
    yPos = 300;
  }
	
  //metodo o funcion
  void display() {
    //instrucciones que realiza el metodo o funcion y obtiene su informacion de el constructor
    ellipse(xPos,yPos,100,100);
  }
	
}
