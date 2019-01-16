//Funcion 04

void setup() {
  //tamaño del sketch
  size(600,600);
}

void draw() {
  
  //loop - repeticion 
  for(int i = 0; i < width; i+=20){
  //llamada y las variables que seran utilizadas en la funcion
  particula(i,random(height));
  }
  
}

//funcion con los valores (tipo de variable + nombre de la variable)
void particula(float xPos, float yPos) {

	//instrucciones que se ejecutan dentro de la variable
  /*variable local (tipo de variable + nombre de la variable = valor)
  nota: solo puede ser utilizada dentro de la funcion*/
  float r = random(5,15);
  
  //formas
  ellipse(xPos, yPos,r,r);
  ellipse(xPos-r,yPos,r/2,r/2);
  ellipse(xPos+r,yPos,r/2,r/2);
  ellipse(xPos,yPos-r,r/2,r/2);
  ellipse(xPos,yPos+r,r/2,r/2);
}

//Live version - https://www.openprocessing.org/sketch/654418
