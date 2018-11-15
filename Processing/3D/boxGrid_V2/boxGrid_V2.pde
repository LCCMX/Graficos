// Cubic Grid
float boxSize = 10;
float margin = boxSize*2;
float depth = 50;
color boxFill;

void setup() {
  size(400, 400, P3D);
  background(255);
  noStroke();
}

void draw() {
  fill(255,30);
  rect(0,0,width,height);

  // center and spin grid
  translate(width/2, height/2, 100);
  rotateY(frameCount*PI/120);
  rotateX(frameCount*PI/120);
 

  // build grid using multiple translations 
  for (float i=-depth/2+margin; i<=depth/2-margin; i+=boxSize) {
    pushMatrix();
    for (float j=-height/2+margin; j<=height/2-margin; j+=boxSize) {
      pushMatrix();
      for (float k=-width/2+margin; k<=width/2-margin; k+=boxSize) {
        // base fill color on counter values, abs function 
        // ensures values stay within legal range
        boxFill = color(abs(i), abs(j), abs(k), 50);
        pushMatrix();
        translate(k, j, i);
        fill(boxFill);
        box(boxSize, boxSize, boxSize);
        popMatrix();
      };
      popMatrix();
    }
    popMatrix();
  }
}
