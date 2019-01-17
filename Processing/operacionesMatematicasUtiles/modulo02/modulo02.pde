//Modulo 02

//Inicializacion de variable
float n = 0;

void setup() {
  //Tamaño de sketch
  size(720, 160);
  //Modelo de color y rango
  colorMode(HSB, 360, 100, 100);
  
}

void draw() {
  //Operacion que se realiza con modulo
  //n = (0+1)%(720/2) = (1)%(360) = 1
  n = (n+=1)%(width/2);
  //Fondo, n modifica los valores del primer canal
  background(n, 100, 100);
  //Sin linea
  noStroke();
  //Relleno de la forma, 360 - n = 360 - 1 = 359 
  fill(360-n, 100, 100);
  //Forma
  rect(0, height*0.3, width, height*0.4);
  //Loop, i = width * 0.15 = 108; 108 > 720 - ( 108 ); i += 10 
  for (float i = width*0.15; i < width -(width*0.15); i += 10) {
    //color de la linea, n modificando los valores del primer canal
    stroke(n,100,100);
    //Tamaño de la linea
    strokeWeight(3);
    //Linea
    line(i, height*0.3,i, height*0.7);
  }
  
}

//Live version - https://www.openprocessing.org/sketch/655274
