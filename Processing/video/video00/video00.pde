//Declaracion de la libreria que se utilizara
import processing.video.*;

//Declaracion de objeto que nos servira para la captura de video
Capture video;

void setup() {
  //Tamaño del sketch
  size(640, 480);
  //Inicializacion del objeto y definicion de tamaño de la captura y frameRate
  video = new Capture(this,640,480,30);
  //Comienza a capturar
  video.start();     
 }      


void draw() {
//Si(Captura == verdad)
  if (video.available()) {
    //Comienza a leer los frames
    video.read();
  }
  //Mostrar frames en el sketch
  image(video, 0, 0);
}
