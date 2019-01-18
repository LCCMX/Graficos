//Rotate X,Y,Z 

//Declaracion de variable
float t = 0.0;

void setup() {
	//Tamaño de sketch y uso de modelos 3D
  size(200,200, P3D);
}

void draw() {
	//Fondo
  background(255);
	//Color de linea
  stroke(0);
	//Color de relleno de forma
  fill(175);
  
	//Donde sera movido el punto (0,0)
  translate(width/2, height/2);
	//Rotar axis Z
  rotateZ(t);
  //rotateX(t);
  //rotateY(t);
	//Modificacion de punto de referencia de la forma en las coordenadas 'x' 'y'
  rectMode(CENTER);
	//Forma
  rect(0,0,100,100);
	
  //Aumento de variable
  t += 0.02;
}

//Live version - https://www.openprocessing.org/sketch/655708
