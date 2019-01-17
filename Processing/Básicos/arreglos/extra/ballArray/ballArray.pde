//Extra - Ball Array

//Declaracion de variables
//Tamaño del arreglo
float n = 50;
//Arreglo de posiciones de X, Y
float[]posX;
float[]posY;


void setup() {
	//Tamaño del sketch
  size(600, 600);
	//Fondo
  background(32, 160, 152);
  smooth();
	//Inicializacion de los arreglos y tamaño
  posX = new float[50];
  posY = new float[50];
	//Tamaño del la linea
  strokeWeight(10);
	//Color de la linea
  stroke(0,100);
}

void draw() {
}

//Evento, cada que el mouse es presionado pasan las instrucciones que estan dentro
void mouseReleased() {
	//Instrucciones
	//Fondo
  background(32, 160, 152);
	//Loop
  for (int i = 0; i < n; i++ ) {
		//Pase de datos a los arreglos
    posX[i] = random(width);
    posY[i] = random(height);
		//Tamaño de la linea
    strokeWeight(10);
		//posicion de la forma en relacion a los arreglos
    point(posX[i], posY[i]);
		//Tamaño de la linea
    strokeWeight(1);
		//Coordenadas de la linea, del punto establecido en el arreglo a donde se encuentra el mouse
    line(posX[i], posY[i], mouseX, mouseY);
  }
	//Relleno de la forma
  fill(0,100);
	//Tamaño de la linea
  strokeWeight(1);
	//Forma
  ellipse(mouseX, mouseY, 22, 22);
}

//Live version - https://www.openprocessing.org/sketch/655089
