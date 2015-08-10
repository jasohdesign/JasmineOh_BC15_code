float x;
float y;
float z;
float h;
PImage space;
float newX;
float newY;
float newZ;

void setup(){
  size(500,283,P3D);
  space = loadImage("space.jpg");
  background(space);
  x = 300;
  y = height/2;
  z = 0;
  newX = 20;
  newY = 40;
  newZ = 100;
  frameRate(7);
}

void draw(){
  pushMatrix();
  lights();
  translate(x,y,z);
  rotateX(1.25);
  rotateY(-0.4); //<>//
  rotateZ(PI/8);
  popMatrix();

  println(frameRate);
  pushMatrix();
  translate(x++, y++, z++);
  println("coordinates " , x,y,z);
  fill(HSB, 150, 100,81);
  
  stroke(h);
  int x = 300;
  while (x<500){
    stroke(h);
    x = x+10;
    h = h+400;
    
  if (x >= 427.0 && y >= 268.0 && z >= 127.0){
    lights();
    translate(newX, newY, newZ);
    sphere(20);
  }
}
  sphere(30);
//  constrain(x, 0, width); //trying to make the object stay within frame
  camera(100, 100, 2, mouseX, mouseY, 0.0, 0.0, 1.0, 0.0);
  popMatrix(); 

   
}
 
void mousePressed(){
  if (x <500){
    frameRate(30);
  }
}