
float t = 0.0;
float t0 = 0.0;

void setup() {
  size(200, 200, P3D);
  background(255);
}

void draw() {
  noStroke();
  fill(255,30);
  rect(0,0,width,height);
  stroke(0,50);
  noFill();
  

  pushMatrix();
  translate(width/2, height/2,100);
  rotateZ(t);
  rotateX(t0);
  rotateY(t+t0);
  //sphereDetail(mouseX/10);
  //sphereDetail(mouseX/10,mouseY/10);
  sphere(25);
  popMatrix();
  
  

  t += 0.02;
  t0 += 0.02;
}
