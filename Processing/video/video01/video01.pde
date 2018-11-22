import processing.video.*;

Capture video;

void setup() {
  size(320, 240);

  video = new Capture(this, 320, 240, 30);
  
  video.start();
}

void draw() {

  if (video.available()) {
    video.read();
  }
  tint(mouseX,mouseY,255);
  image(video,0,0,mouseX,mouseY);
}
