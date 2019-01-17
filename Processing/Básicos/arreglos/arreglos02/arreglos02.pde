//Arreglos 02

//Declaracion del arreglo de objetos y tamaño. 
Particula [] part = new Particula[500];

void setup() {
	//tamaño del sketch
  size(600, 600);
	//inicializacion del arreglo de objetos con los datos a pasar
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particula (random(width), random(height));
  }
}

void draw() {
	//llamada de los objetos en conjunto con los metodos
  for (int i = 0; i < part.length; i++) {
    part[i].display();
    part[i].move();
  }
}
