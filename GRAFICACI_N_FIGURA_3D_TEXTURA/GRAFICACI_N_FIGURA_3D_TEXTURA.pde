PShape ball;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("Linux Penguin (Texture).png");
  ball = loadShape("Linux Penguin.obj");
  ball.setTexture(txtr); 
}


void draw () {
  background (100);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (10);
  shape (ball);
  popMatrix();

  theta+=0.01; //increment angle
}
