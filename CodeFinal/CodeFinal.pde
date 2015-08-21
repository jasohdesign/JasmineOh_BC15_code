PImage img;

int pixelX = 0;
int pixelY = 20;
PFont f;
color myPixelColor;
int whichPerson;
Face person1; 
Face person2;

void setup() {
  size(480, 700);  
  background(0);
  frameRate(1000);
  noSmooth(); 

  noStroke();
  rectMode(CENTER);
  imageMode(CENTER);
  whichPerson = 1;

  img = loadImage("mask.png");
  //img2 = loadImage("mask2.png");
  person1 = new Face("Have you ever used a fake name?", 10);
  person2 = new Face("Have you deleted or edited something?", 80);

  //Question 
  f = createFont("Helvetica", 20, true);
} 

void draw() {
  myPixelColor = img.get(pixelX, pixelY);

  if (whichPerson == 1) {
    person1();
  } else if (whichPerson == 2) {
    person2();
  } else {
    person3();
  }
}

void mousePressed() {
  if (person1.isDone) {
    if (mouseX > 380 && mouseX < 460 && mouseY > 640 && mouseY < 680) {
      fill(0);
      rect(0, 0, width, height);
      image(img, 0, 0);
      pixelX = 0;
      pixelY = 20;

      whichPerson = 2;
      person2 = new Face("Have you deleted or edited something?", 80);
    }
  }
}

void person1() {
  //tint(255, 0, 0, 50);

  person1.display();
  person1.lineDraw();

  if (person1.isDone) {
    rectMode(CORNER);
    fill(255);
    rect(380, 640, 80, 40);
  }
}

void person2() {
  //tint(255, 0, 0, 50);
  //myPixelColor = img2.get(pixelX, pixelY);

  person2.display();
  person2.lineDraw();

  //if (person2.isDone) {
  //  rectMode(CORNER);
  //  fill(255);
  //  rect(380, 640, 80, 40);

  //  //NEXT Button text
  //  text("NEXT", 380, 640, 100);
  //  fill(0);
  //  textSize(32); 
  //};
}

void person3() {
}