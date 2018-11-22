import processing.video.*;

Movie movie;

void setup() {
  size(1280, 720);

  movie = new Movie(this, "vellum.mp4");

  movie.loop();
}

void draw() {
  image(movie, 0, 0);
}

void movieEvent(Movie movie) {
  movie.read();
}
