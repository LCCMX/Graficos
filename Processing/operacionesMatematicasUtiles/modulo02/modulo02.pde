float n = 0;

void setup() {
  size(720, 160);
  colorMode(HSB, 360, 100, 100);
  
}

void draw() {
  n = (n+=1)%(width/2);
  background(n, 100, 100);
  noStroke();
  fill(360-n, 100, 100);
  rect(0, height*0.3, width, height*0.4);
  for (float i = width*0.15; i < width -(width*0.15); i += 10) {
    stroke(n,100,100);
    strokeWeight(3);
    line(i, height*0.3,i, height*0.7);
  }
  
}
