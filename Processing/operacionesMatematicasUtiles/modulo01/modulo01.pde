//Modulo 01

//Declararion de arreglo de objetos y su tamaño
Particula [] part = new Particula[256];
//Inicializacion de indice
int indice = 0;

void setup() {
  //Tamaño de sketch
  size(600, 600);
  //Fondo
  background(0);
  //Inicializacion del arreglo de objetos y las variables utilizadas por la clase
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particula (random(width), random(height));
  }
}

void draw() {
  //Sin linea
  noStroke();
  //Relleno de la forma y donde se esta utilizando 'indice'
  fill(10,indice,130,30);
  //Forma
  rect(0,0,width,height);
  //Sin relleno
  noFill();
  //Color de la linea
  stroke(100,12,255);
  //Loop
  for(int i = 0; i < part.length; i++){
    //Llamada de los objetos con los metodos
    part[i].display();
    part[i].move();
  }
  //operacion ejecutada con modulo
  indice = (indice +1)%part.length;
	/*
	nota: A diferencia del ejemplo de Modulo 00, podemos ver como los colores son afectados por la operacion con modulo
	*/
}

//Live version - https://www.openprocessing.org/sketch/655272
