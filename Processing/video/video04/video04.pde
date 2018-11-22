

import processing.video.*;

Capture video;

int videoScale = 8;

int cols, rows;

void setup() {
  size(640, 480);

  cols = width/videoScale;
  rows = height/videoScale;

  background(0);
  video = new Capture (this, cols, rows, 30);
  
  video.start();
}

void draw() {
  if (video.available()) {
    video.read();
  }
  
  video.loadPixels();
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i*videoScale;
      int y = j*videoScale;
      
      color c = video.pixels[i+j*video.width];
      
      fill(c);
      
      rect(x, y, videoScale, videoScale);
    }
  }
}
