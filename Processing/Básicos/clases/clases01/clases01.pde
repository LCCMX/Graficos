//Clases 01

//Declaracion de objeto
Particula p;

void setup() {
  //tamaño del sketch
  size(600,600);
  //inicializacion de objeto y a que clase estara sujeta
  p = new Particula();
}

void draw() {
  //llamada de metodo dentro de la clase
  /*
  nota: cuando el metodo es llamado, tiene que estar precedido por el objeto "p"
  seguida de un "." y despues el metodo dentro de la clase "display"
  */
  p.display();
  
}

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
//Live version - https://www.openprocessing.org/sketch/655036
