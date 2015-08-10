float pupilLeft = 400;
float pupilY = 400;
float pupilRight = 400;
float speed = 1;
int hue= 50;

boolean hasClicked= false;

void setup() {
  size(800, 800);
  colorMode(RGB, 255, 255, 255);
}

void draw() {
  background(0);
  
  fill(255);
  stroke(0);
  ellipse(400, 400, 250, 350);
  
  //eyes back 
  strokeWeight(3);
  fill(255);
  ellipse(330, 300, 90, 90);

  stroke(3);
  fill(255);
  ellipse(470, 300, 90, 90);
  //eyes

  //lips  
  noStroke();
  fill(255, 180, 180);
  arc(383, 460, 35, 30, -PI, 0);

  fill(255, 180, 180);
  arc(418, 460, 35, 30, -PI, 0);

  fill(255, 180, 180);
  arc(400, 460, 70, 50, 0, PI);
  //lips

  noStroke();
  if (hasClicked == false) {
    fill(0);
    pupilLeft= map(mouseX, 0, width, 300, 340);
    pupilY = map(mouseY, 0, height, 300, 330);
    pupilRight = map(mouseX, 0, width, 450, 480);
  } else {
    fill(255,0,0);
    pupilLeft= map(mouseX, 0, width, 300, 340);
    pupilY = map(mouseY, 0, height, 300, 330);
    pupilRight = map(mouseX, 0, width, 450, 480);
  }
  
  ellipse(pupilLeft, pupilY, 40, 40);
  ellipse(pupilRight, pupilY, 40, 40);
}

void mousePressed() {
  hasClicked = true;
}

void mouseReleased() {
  hasClicked = false;
}

