//Funcion 01

void setup() {
  //tamaño del sketch
  size(600,600);
}

void draw() {
  //llamada y valores que seran utilizados por la funcion
	/*nota: el tipo de valor que va a ser utilizado en la funcion, tiene que
  ser similar al que esta especificado cuando se declara la funcion*/
  particula(300,300);
}

//funcion con los valores (tipo de variable + nombre de la variable)
void particula(float xPos, float yPos) {
  
  //instruccion que se ejecuta dentro de la funcion en conjuncion con los valores
  ellipse(xPos, yPos,100,100);
  
}

//Live version - https://www.openprocessing.org/sketch/654400
