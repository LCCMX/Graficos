//Arreglos 01

/*Declaracion del objeto, dandole la propiedad de un arreglo de objetos 
y definidiendo su tamaño */
Particula [] part = new Particula[100];

void setup() {
  //tamaño del sketch
  size(600, 600);
  //inicializacion del objeto y paso de argumentos
  /*
  nota:part.length es la forma en la que damos un limite al loop y somo
  congruentes con el tamaño que establecimos del arreglo
  */
  for (int i = 0; i < part.length; i++) {
    //objeto[indice / de 0 a 100] = new Particula(valores, valores);
    part[i] = new Particula (random(width), random(height));
  }
}

void draw() {
  //llamada de objetos y sus metodos
  for (int i = 0; i < part.length; i++) {
    //objeto[indice / de 0 a 100].metodo();
    part[i].display();
  }
}

//Live version - https://www.openprocessing.org/sketch/655072
