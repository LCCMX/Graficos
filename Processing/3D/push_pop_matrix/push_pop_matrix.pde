
float t = 0.0;
float t0 = 0.0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  rectMode(CENTER);

  pushMatrix();
  translate(50, 50);
  rotateZ(t);
  rect(0, 0, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(150,150);
  rotateX(t0);
  //rotateY(t);
  rect(0,0,60,60);
  popMatrix();

  t += 0.02;
  t0 += 0.02;
}
