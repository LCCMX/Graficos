//mouseX = 0 empieza
//mouseX = width termina
//todo entre el es un salto al video

import processing.video.*;

Movie movie;

void setup() {
  size(1280, 720);
  background(0);
  movie = new Movie(this, "vellum.mp4");

  movie.loop();
}

void draw() {
  float ratio = mouseX/ (float) width;
  
  movie.jump(ratio*movie.duration());
  movie.read();
  image(movie, 0, 0);
}
