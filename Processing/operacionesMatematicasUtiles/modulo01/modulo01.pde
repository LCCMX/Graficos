Particula [] part = new Particula[256];
int indice = 0;

void setup() {

  size(600, 600);
  background(0);
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particula (random(width), random(height));
  }
}

void draw() {
  noStroke();
  fill(10,indice,130,30);
  rect(0,0,width,height);
  noFill();
  stroke(100,12,255);
  for(int i = 0; i < part.length; i++){
  part[i].display();
  part[i].move();
  }

  indice = (indice +1)%part.length;
}
