//Funcion 06

void setup() {
  //tamaño del sketch
  size(100, 100);
}

void draw() {
  /*
  Otro tipo de funcion, en esta se llama a la funcion, se realiza la operacion
  y regresa como un resultado, para despues de ser mostrada en la consola
  */
  println(suma(10,5));
}

//funcion
int suma(int a, int b) {
//instruccion ejecutada dentro de la funcion
  
  //regresar este resultado a draw() = a + b = 10 + 5 = 15 
  return a+b;
  
}

//Live version - https://www.openprocessing.org/sketch/654445
