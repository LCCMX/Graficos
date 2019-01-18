//Box Grid v2

//Inicializacion de variables
float boxSize = 10;
//10*2 = 20
float margin = boxSize*2;
float depth = 50;
color boxFill;

void setup() {
	//Tamaño del sketch y declaracion de uso de 3D
  size(400, 400, P3D);
	//Color del fondo
  background(255);
	//Sin lineas
  noStroke();
}

void draw() {
	//
  fill(255,30);
  rect(0,0,width,height);

  //Centrar el punto(0,0) a las coordenadas de translate y la profundidad del eje Z
  translate(width/2, height/2, 100);
	//Rotacion de los ejes X y Y, estos van de acuerdo al frameRate, asi es como el cubo dara vueltas
  rotateY(frameCount*PI/120);
  rotateX(frameCount*PI/120);
 

//Loop para el eje X donde se mostraran las cajas en serie horizontal
  for (float i=-depth/2+margin; i<=depth/2-margin; i+=boxSize) {
    pushMatrix();
		 //Loop para el eje Y donde se mostraran las cajas en serie vertical
    for (float j=-height/2+margin; j<=height/2-margin; j+=boxSize) {
      pushMatrix();
			//Loop para hacer el cubo de cajas dandole profundida
      for (float k=-width/2+margin; k<=width/2-margin; k+=boxSize) {
       // valores de los canales de color
			 //abs() convierte los numeros flotantes a valores absolutos, 1.02 = 1
        boxFill = color(abs(i), abs(j), abs(k), 50);
				//Fijacion de la matriz
        pushMatrix();
				//Fijar caja en estas coordenadas
        translate(k, j, i);
				//Colores del objeto
        fill(boxFill);
				//Objeto
        box(boxSize, boxSize, boxSize);
        popMatrix();
      };
      popMatrix();
    }
    popMatrix();
  }
}

//Live version - https://www.openprocessing.org/sketch/655328
