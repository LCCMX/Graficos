//Modulo 00

//Declaracion de arreglo de objetos y tamaño del arreglo
Particula [] part = new Particula[256];
//Inicializacion del indice
int indice = 0;

void setup() {
  //Tamaño del sketch
  size(600, 600);
  //Inicializacion del arreglo de objetos y los objetos que seran pasados luego
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particula (random(width), random(height));
  }
}

void draw() {
  //Llamada del objeto, su indice o posicion dentro del arreglo y el metodo de la clase.
    part[indice].display();
    part[indice].move();
  
  //indice = (0 + 1) % 256 = (1) % 256 = 1
 
    indice = (indice + 1)%part.length;
    
  /*
  nota: Por como esta escritra la suma y draw() funciona, recuerda que 
  automaticamente se esta sumando el resultado de 'indice' con 1 otra vez.
  indice = (0 + 1) % 256 = (1) % 256 = 1 || indice = 1
  indice = (1 + 1) % 256 = (2) % 256 = 2 || indice = 2
  */
}

//Live version - https://www.openprocessing.org/sketch/655268
