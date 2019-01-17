//Clases 02

//Declaracion de objetos
Particula p1;
Particula p2;

void setup() {
  //tamaño del sketch
  size(600,600);
  /*
  inicializacion de los objetos y a que clase estara sujeta, con los valores utilizados
  por el constructor
  */
  p1 = new Particula(100,100);
  p2 = new Particula(200,200);
}

void draw() {
  //llamada de metodo dentro de la clase
  /*
  nota: cuando el metodo es llamado, tiene que estar precedido por el objeto "p1 o p2"
  seguida de un "." y despues el metodo dentro de la clase "display"
  */
  p1.display();
  p2.display();
  
}
