//Video 05

//Declaracion de la libreria que se utilizar
import processing.video.*;

//Declaracion de objeto
Capture video;

//Inicializacion de variables
int videoScale = 2;
int cols, rows;

void setup() {
  //Tamaño del sketch
  size(640, 480);
  //Inicializacion de variables
  cols = width/videoScale;
  rows = height/videoScale;

  //Inicializacion de objeto y utilizacion de las variables de la linea 16 y 18
  video = new Capture (this, cols, rows, 30);
  //Iniciar video
  video.start();
}

void draw() {
 //Si(video.disponible() == verdad)
  if (video.available()) {
    //Leer frames
    video.read();
  }
  //Color de fondo
  background(0);
  
  //Cargar los pixeles de la captura de video
  video.loadPixels();
  //Leer los pixeles del axis X
  for (int i = 0; i < cols; i++) {
    //Leer los pixeles del axis Y
    for (int j = 0; j < rows; j++) {
      int x = i*videoScale;
      int y = j*videoScale;
      //volteando x para espejear la imagem
      int loc = (video.width -i -1)+ j*video.width;
      //Accesar a los pixeles, en este caso los colores
      color c = video.pixels[loc];
      //Tamaño de la forma en relacion a el brillo de el pixel
      float sz = (brightness(c)/255.0)*videoScale;
      rectMode(CENTER);
      //Rellenar la forma con color blanco
      fill(255);
      //Sin lineas
      noStroke();
      //Forma
      rect(x+videoScale/2, y+videoScale/2, sz, sz);
    }
  }
}
