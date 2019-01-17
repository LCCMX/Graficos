//BeatyArray

//Declaracion de arreglo
float[]base;
//Tamaño del loop en linea 26
float n = 10;

void setup() {
	//Tamaño de sketch
  size(600, 600);
	//Fondo
  background(0);
	//Inicializacion de arreglo con tamaño
  base = new float [360];
  
}

void draw() {
	//Sin linea
  noStroke();
	//Relleno
  fill(0,40);
	//Forma
  rect(0,0,width,height);
	//Color de la linea
  stroke(255,30);
	
	//Loop
	/*
	Nota: El loop inicia en 10, su limite es 600 - 10 y hace un amuento de cada 10 numeros
	*/
  for (float i = n; i < width-n; i += n) {
		//Linea con coordenadas sujetas al loop y la posicion de mouse
    line(i, 0, mouseX,mouseY);
		//primera locacion: linea(10,0,mouseX,mouseY)
  }
}

//Live version - https://www.openprocessing.org/sketch/655093
