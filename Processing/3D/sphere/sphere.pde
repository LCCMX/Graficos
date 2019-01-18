//Sphere

//Declaracion e inicializacion de variables
float t = 0.0;
float t0 = 0.0;

void setup() {
	//Tamaño de sketch y declaracion de uso de modelos en 3D
  size(200, 200, P3D);
	//Color del fondo
  background(255);
}

void draw() {
	//Sin lineas
  noStroke();
	//Color del relleno y uso de canal alpha
  fill(255,30);
	//Forma
  rect(0,0,width,height);
	//Color de linea
  stroke(0,50);
	//Sin relleno
  noFill();
  
	//Funcion de matriz
  pushMatrix();
	//Mover punto (0,0) a las coordenadas de 'translate'
  translate(width/2, height/2,100);
	//Rotar axis Z
  rotateZ(t);
	//Rotar axis X
  rotateX(t0);
	//Rotar axis Y
  rotateY(t+t0);
  //sphereDetail(mouseX/10);
  //sphereDetail(mouseX/10,mouseY/10);
	//Forma
  sphere(25);
  popMatrix();
  
  
	//Aumento de variable
  t += 0.02;
  t0 += 0.02;
}

//Live version - https://www.openprocessing.org/sketch/655712
