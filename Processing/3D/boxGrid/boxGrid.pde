// Cubic Grid

//Inicializacion de variables
float boxSize = 40;
//40 * 2 = 80;
float margin = boxSize*2;
float depth = 400;
color boxFill;

void setup(){
  //Tamaño del sketch y declaracion de uso de 3D
  size(400, 400, P3D);
  //Sin lineas
  noStroke();
}

void draw(){
  //Color del fondo
  background(255);
  //Centrar el punto(0,0) a las coordenadas de translate y la profundidad del eje Z
  //-400/2 = -200
  translate(width/2, height/2, -depth/2);
  //Rotacion de los ejes X y Y, estos van de acuerdo al frameRate
  rotateY(frameCount*PI/60);
  rotateX(frameCount*PI/60);

  //Loop para el eje X donde se mostraran las cajas serie horizontal
  for (float i=-depth/2+margin; i<=depth/2-margin; i+=boxSize){
    pushMatrix();
    //Loop para el eje Y donde se mostraran las cajas en serie vertical
    for (float j=-height/2+margin; j<=height/2-margin; j+=boxSize){
      pushMatrix();
      //Loop para hacer el cubo de cajas dandole profundida
      for (float k=-width/2+margin; k<=width/2-margin; k+=boxSize){
        // valores de los canales de color
				//abs() convierte los numeros flotantes a valores absolutos, 1.02 = 1
        boxFill = color(abs(i), abs(j), abs(k), 50);
        //Fijacion de la matriz
        pushMatrix();
        //Fijar caja en estas coordenadas
        translate(k, j, i);
        //Colores del objeto
        fill(boxFill);
        //Objeto
        box(boxSize, boxSize, boxSize);
        popMatrix();
      };
      popMatrix();
    }
    popMatrix();
  }
}

//Live version - https://www.openprocessing.org/sketch/655326
