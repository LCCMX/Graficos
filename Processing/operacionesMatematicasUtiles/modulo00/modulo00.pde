Particula [] part = new Particula[256];
int indice = 0;

void setup() {
  size(600, 600);
  for (int i = 0; i < part.length; i++) {
    part[i] = new Particula (random(width), random(height));
  }
}

void draw() {
  //background(0);
    part[indice].display();
    part[indice].move();
    
    indice = (indice +1)%part.length;
  
}
