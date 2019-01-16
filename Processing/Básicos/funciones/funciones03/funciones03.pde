//Funciones 03

void setup() {
  //tamaño del sketch
  size(600,600);
}

void draw() {
  
  //llamada y valores/argumentos que seran pasados a la funcion
  particula(random(width),random(height));
  
}

//funcion con los valores (tipo de variable + nombre de la variable)
void particula(float xPos, float yPos) {
  
  //instrucciones que se ejecutan dentro de la variable
  ellipse(xPos, yPos,10,10);
  ellipse(xPos-12,yPos,5,5);
  ellipse(xPos+12,yPos,5,5);
  ellipse(xPos,yPos-12,5,5);
  ellipse(xPos,yPos+12,5,5);
  
}

//Live version - https://www.openprocessing.org/sketch/654415
