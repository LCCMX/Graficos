//Inicializacion de variables
float t = 0.0;
float t0 = 0.0;

void setup() {
	//Tamaño del sketch y aclaracion de que se utilizara 3D
  size(200, 200, P3D);
	//Color del fondo
  background(255);
}

void draw() {
	//Sin lineas
  noStroke();
	//Color del relleno
  fill(255,30);
	//Forma
  rect(0,0,width,height);
	//Color de la linea
  stroke(0,50);
	//Sin rellenar
  noFill();
	//Matriz de coordenadas
  pushMatrix();
	//Mover punto(0,0) a las nuevas coordenadas establecidas por 'translate'
  translate(width/2, height/2,100);
	//rotar eje Z con los valores de 't'
  rotateZ(t);
	//rotar eje X con los valores de 't0'
  rotateX(t0);
	//rotar eje Y con los valores de 't' y 't0'
  rotateY(t+t0);
	//Objeto en 3D
  box(50);
  popMatrix();
  
	/*
	nota: Lo que pushMatrix() y popMatrix() hacen en este caso es aislar el objeto o forma que es 
	afectada por las otras funciones sin afectar otras que puedan estar ejecutandose tambien
	*/
  
	//Aumento de las variables establecidas al principio del codigo
  t += 0.02;
  t0 += 0.02;
}

//Live version - https://www.openprocessing.org/sketch/655324
