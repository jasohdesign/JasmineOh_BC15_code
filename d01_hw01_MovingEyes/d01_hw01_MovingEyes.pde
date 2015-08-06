float pupilLeft = 400;
float pupilY = 400;
float pupilRight = 400;
float speed = 1;
int hue= 50;
color leftColor = color(255, 204, 0);

boolean hasClicked= false;

void setup() {
  size(800, 800);
  colorMode(RGB, 255, 255, 255);
}

void draw() {
  background(0);
  background(0);
  smooth();

  fill(255);
  stroke(0);
  strokeWeight(2);
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
    pupilLeft= map(mouseX, 0, width, 300, 340);
    pupilY = map(mouseY, 0, height, 300, 330);
    pupilRight = map(mouseX, 0, width, 450, 480);
  } else {
    fill(hue, 255, 255);
    pupilLeft += 5;
    pupilLeft = map(mouseX, 0, width, 600, 4400);
    pupilY = map(mouseY, 0, height, 300, 330);
    pupilRight = map(mouseX, 0, width,  800, 800);
  }
  
  fill(random(hue));

  ellipse(pupilLeft, pupilY, 40, 40);
  ellipse(pupilRight, pupilY, 40, 40);
}

void mouseClicked() {
  hasClicked = true;
}

