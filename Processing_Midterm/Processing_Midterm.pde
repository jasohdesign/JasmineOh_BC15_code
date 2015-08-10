float x;
float y;
float z;
float h;
PImage space;

float x2;
float y2;
float z2;

float x3;
float y3;
float z3;

void setup(){
  size(500,283,P3D);
  space = loadImage("space.jpg");
  background(space);
  x = 300;
  y = height/2;
  z = 0;
  frameRate(7);
  //sphere2 coordinates
  x2 = 100;
  y2 = 100;
  z2 = 0;
  //
  
}

void draw(){
  pushMatrix();
  //lights();
  translate(x,y,z);
  rotateX(1.25);
  rotateY(-0.4); //<>//
  rotateZ(PI/8);
  popMatrix();

  pushMatrix();
  translate(x++, y++, z++);
  fill(HSB, 150, 100,81);
  
  stroke(h);
  
  stroke(255);
  sphere(30);
  camera(100, 100, 2, mouseX, mouseY, 0.0, 0.0, 1.0, 0.0);
  popMatrix(); 

  if (x > 350) {
    fill(255, 0, 0);
    //lights();
    translate(x2,y2,z2);
    translate(x2--,y2++,z2++);
    sphere(20);
  }
}

void mousePressed(){
  if (x <500){
    frameRate(30);
  }
  
  
}