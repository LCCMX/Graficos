//Push pop matrix

//Declaracion de variables e inicializacion
float t = 0.0;
float t0 = 0.0;

void setup() {
  //Tamaño del sketch y uso de modelos en 3D
  size(200, 200, P3D);
}

void draw() {
  //Fondo
  background(255);
  //Color de linea
  stroke(0);
  //Color de relleno de la forma
  fill(175);
  //Especificacion en cual sera el punto de referencia de la forma
  rectMode(CENTER);
  /*
  nota:Cuando se utiliza una forma como 'rect()', los primeros dos argumentos 'x' y 'y' estan ubicados en la esquina superior
  izquierda. Al usar 'rectMode(CENTER)', le decimos a processing que esos puntos se encontraran en el centro de la forma
  */
  //Funcion de matriz
  pushMatrix();
  //Mover punto (0,0) a las coordenadas de 'translate'
  translate(50, 50);
  //Rotar axis Z
  rotateZ(t);
  //Forma
  rect(0, 0, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(150,150);
  rotateX(t0);
  //rotateY(t);
  rect(0,0,60,60);
  popMatrix();

  //Aumento de variables ya declaradas
  t += 0.02;
  t0 += 0.02;
}

//Live version - https://www.openprocessing.org/sketch/655706
