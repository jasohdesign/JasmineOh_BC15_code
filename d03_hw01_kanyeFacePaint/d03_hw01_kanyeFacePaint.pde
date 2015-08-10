PImage kanye;

void setup() {
  size(495,650);
  background(255);
  kanye = loadImage("kanye.png");
  
  imageMode(CENTER);
}

void draw() {
  
  int xOffset = int(random(20)-10);
  int yOffset = int(random(20)-10);
  int x = int(map(mouseX+xOffset, -10, width+10, 0, kanye.width));
  int y = int(map(mouseY+ yOffset, -10, height+10, 0, kanye.height)) ;
  
  println("x: " + x + "\ny: " + y);
  
  int loc= x + y*kanye.width;
  loadPixels();
  
  float r = red (kanye.pixels[loc]);
  float g = green (kanye.pixels[loc]);
  float b = blue (kanye.pixels[loc]);
  
  noStroke();
  fill(r,g,b,200);
  
  int circleSize = int(map(loc, 0, width*height, 1, 30)); 
  ellipse(x,y,circleSize,circleSize);
  
}
  void keyReleased() {
    if(key == 's') {
       saveFrame(); 
    }
  }
  
  



