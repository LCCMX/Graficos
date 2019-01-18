//Video 03

//Declaracion de la libreria que se utilizar
import processing.video.*;

//Declaracion de objeto
Movie movie;

void setup() {
  //Tamaño de sketch
  size(1280, 720);
  //Color de fondo
  background(0);
  //Inicializacion de objeto
  movie = new Movie(this, "vellum.mp4");
  //Video en loop
  movie.loop();
}

void draw() {
  //Declaracion e inicializacion de variable
  float ratio = mouseX/ (float) width;
  
  /*
  '.jump()' nos funciona para saltar o movernos a un segundo/tiempo especifico en el video
  en combinacion con ratio que esta siendo manipulado por las coordenadas del 'mouse' en el
  axis 'X' y 'movie.duration()' que es la duracion del video, se multiplican ambos valores para generar el efecto de salto
  */
  movie.jump(ratio*movie.duration());
  //Leer video
  movie.read();
  //Mostrar video en el sketch
  image(movie, 0, 0);
}
