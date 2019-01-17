//Modulo 03

//Inicializacion de variable
float n = 0;

void setup() {
  //Tamaño de sketch
  size(720, 160);
  //Modelo de color y rango
  colorMode(HSB, 360, 100, 100,100);
  //Color del fondo
  background(200, 100, 100);
}

void draw() {
  //Operacion donde se esta utilizando modulo
  n = (n+=1)%(width/2);
  //Inicializacion de variable con datos al azar
  float r = random(-1,1);
   /*
  nota: Estos valores alcanzan un rango de -1 a 1, 
  es decir: -0.99,-0.8,-0.5,0,0.1,0.9,1
  */
  
  //Sin lineas
  noStroke();
  //Colores de la forma, el primer canal es modificado por n
  fill(360-n, 100, 100, 30);
  //Forma
  rect(0, 0, width, height);
  //Colores de la segunda forma, el primer canal es modificado por n
  fill(n,100,100);
  //Forma, su posicion es donde se encuentre el mouse
  ellipse(mouseX,mouseY,30,30);
  //Loop
  for (int i = 0; i < width; i += 10) {
    //Color de la linea, el primer canal es modificado por n
    stroke(n, 100, 100);
    //Tamaño de la linea
    strokeWeight(1);
    //Linea, su punto final se mueve hacia donde este el mouse
    line(i,0,mouseX,mouseY);
  }
}

//Live version - https://www.openprocessing.org/sketch/655286
