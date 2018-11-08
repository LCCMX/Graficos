float[]base;
float n = 10;

void setup() {
  size(600, 600);
  background(0);
  base = new float [360];
  
}

void draw() {
  noStroke();
  fill(0,40);
  rect(0,0,width,height);
  stroke(255,30);
  for (float i = n; i < width-n; i += n) {
    line(i, 0, mouseX,mouseY);
  }
}
