//cada pixel de la fuente es dibujada como
//un rectángulo con el tamaño basado en su brillo

import processing.video.*;

Capture video;

int videoScale = 10;

int cols, rows;

void setup() {
  size(640, 480);

  cols = width/videoScale;
  rows = height/videoScale;


  video = new Capture (this, cols, rows, 30);

  video.start();
}

void draw() {
  if (video.available()) {
    video.read();
  }
  background(0);
  
  video.loadPixels();
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i*videoScale;
      int y = j*videoScale;
      //volteando x para espejear la imagem
      int loc = (video.width -i -1)+ j*video.width;

      color c = video.pixels[loc];
      
      float sz = (brightness(c)/255.0)*videoScale;
      rectMode(CENTER);
      fill(255);

      rect(x, y, videoScale, videoScale);
    }
  }
}
