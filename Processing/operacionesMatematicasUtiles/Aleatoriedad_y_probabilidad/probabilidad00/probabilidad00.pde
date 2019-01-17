//Probabilidad 00

void setup() {
  //Tamaño del sketch
  size(200, 200);
  //Fondo
  background(255);
  //Suavidad en las formas
  smooth();
  //Sin lineas
  noStroke();
}

void draw() {
  //Inicializacion de valores
  float red_prob = 0.60;
  float green_prob = 0.10;
  float blue_prob = 0.30;
  float num = random(1);
  /*
  nota: Todos son valores flotante, utilizan numeros con punto decimal,
  en el caso de 'num' el rango es de 0 a 1 = 0.1,0.5,0.9,1
  */
  //Si (num(random(1)) es menorque red_prob(0.30)) 
  if (num < red_prob) {
    //color de la forma
    fill(255, 53, 2, 150);
  } 
  //Si (num(random(1)) es menorque red_pro(0.30)+green_prob(0.10))
  else if (num < red_prob + green_prob) {
    //color de la forma
    fill(156, 255, 28, 150);
  } 
  //Sino
  else {
    //Color de la forma
    fill(10,52,178,50);
  }
  //Forma
  ellipse(random(width), random(height),64,64);
}

//Live version - https://www.openprocessing.org/sketch/655290
