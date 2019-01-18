//Video 01

//Declaracion de la libreria que se utilizara
import processing.video.*;

//Declaracion de objeto 
Capture video;

void setup() {
  //Tamaño del sketch
  size(320, 240);
  //Inicializacion del objeto y definicion de tamaño de la captura y frameRate
  video = new Capture(this, 320, 240, 30);
  //Comienza a capturar
  video.start();
}

void draw() {
  //Si(Captura == verdad)
  if (video.available()) {
    //Comienza a leer los frames
    video.read();
  }
  //'tint()' funciona para colorear la captura de imagen 
  tint(mouseX,mouseY,255);
  //Mostrar frames en el sketch y modificar el tamaño de la imagen
  image(video,0,0,mouseX,mouseY);
}
