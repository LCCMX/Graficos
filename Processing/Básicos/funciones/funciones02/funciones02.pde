//Funcion 02

void setup() {
	//Tamaño del sketch
  size(600,600);
}

void draw() {
	//Color del fondo
  background(0);
	//Llamada y argumentos o variables que seran utilizados por la funcion
  particula(random(width),random(height));
  
}

//funcion con los valores (tipo de variable + nombre de la variable)
void particula(float xPos, float yPos) {
	
	//instruccion que se ejecuta dentro de la funcion con los valores
  ellipse(xPos, yPos,10,10);
  
}

//Live version - https://www.openprocessing.org/sketch/654408
