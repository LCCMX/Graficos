float n = 0;


void setup() {
  size(720, 160);
  colorMode(HSB, 360, 100, 100,100);
  background(200, 100, 100);
}

void draw() {
  n = (n+=1)%(width/2);
  float r = random(-1,1);
  noStroke();
  fill(360-n, 100, 100, 30);
  rect(0, 0, width, height);
  fill(n,100,100);
    ellipse(mouseX,mouseY,30,30);
  for (int i = 0; i < width; i += 10) {
    stroke(n, 100, 100);
    strokeWeight(1);
    line(i,0,mouseX,mouseY);
    
  }
}
