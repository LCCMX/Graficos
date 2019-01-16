//Funcion 05

void setup() {
  //tamaño del sketch
  size(600, 600);
}

void draw() {
  //loop
  for (int i = 20; i < width; i+=20) {
    for (int j = 20; j< height; j+=20) {
      //llamada de la funcion y los valores que van a ser utilizados por ella
      /*nota: estos valores son obtenidos de ambos loops*/
      particula(i, j);
    }
  }
}

//funcion
void particula(float xPos, float yPos) {
  //instrucciones ejecutadas dentro de la funcion
  
  //variable local
  float r = random(5, 15);
  //formas
  ellipse(xPos, yPos, r, r);
  ellipse(xPos-r, yPos, r/2, r/2);
  ellipse(xPos+r, yPos, r/2, r/2);
  ellipse(xPos, yPos-r, r/2, r/2);
  ellipse(xPos, yPos+r, r/2, r/2);
}

// Live version - https://www.openprocessing.org/sketch/654434
