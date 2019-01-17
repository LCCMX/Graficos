//Random 00

//Declaracion de arreglo flotante
float[] randomCounts;

void setup() {
  //Tamaño del sketch
  size(200, 200);
  //Inicializacion de arreglo y definicion de tamaño
  randomCounts = new float [20];
}

void draw() {
  //Fondo
  background(255);
  //Declaracion e iniciacion de index
  int index = int(random(randomCounts.length));
  //Aumento de index
  randomCounts[index]++;
  //Color de linea
  stroke(0);
  //Color de forma
  fill(175);
  //Loop
  for (int x = 0; x < randomCounts.length; x++) {
    //Forma
    rect(x*10,0,9,randomCounts[x]);
  }
  /*
  nota: En 'randomCount[index]++' el tamaño del arreglo se esta modificando en
  referencia del index
  */
}

//Live version - https://www.openprocessing.org/sketch/655292
