//Video 04

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
  //640 / 2 = 320
  cols = width/videoScale;
  //480 / 2 = 240
  rows = height/videoScale;

  /*
  nota:Podemos entender las operaciones anteriores como "escalar" el video
  */
  
  //Fondo 
  background(0);
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
  //Cargar los pixeles de la captura de video
  video.loadPixels();
  //Leer los pixeles del axis X
  for (int i = 0; i < cols; i++) {
    //Leer los pixeles del axis Y
    for (int j = 0; j < rows; j++) {
      int x = i*videoScale;
      int y = j*videoScale;
      //Accesar a los pixeles, en este caso los colores
      color c = video.pixels[i+j*video.width];
      //Rellenar la forma con el color de los pixeles especificados antes
      fill(c);
      //Forma
      rect(x, y, videoScale, videoScale);
    }
  }
}
