//Video 02

//Declaracion de la libreria que se utilizara
import processing.video.*;

//Declaracion de objeto 
Movie movie;

void setup() {
  //Tamaño del sketch
  size(1280, 720);
  //Inicializacion del objeto, el nombre del archivo que ejecutara
  movie = new Movie(this, "vellum.mp4");
  //Repeticion del video
  movie.loop();
}

void draw() {
  //Mostrar el video en el Sketch
  image(movie, 0, 0);
}

//Evento para saber si hay video o no
void movieEvent(Movie movie) {
  movie.read();
}
