class Face {
  String question;
  int percentage;
  Boolean isDone;
 

  //constructor
  Face(String _question, int _percentage) {
    question = _question;
    //yes = _yes;
    //no = _no;
    percentage = _percentage;
    
    
 
    isDone = false;
  }
  //function

  void lineDraw() {
    pixelX += 2;
    // if pixelX too high, reset
    if (pixelX > img.width && pixelY < img.height) {
      pixelX = 0;
      pixelY += 10;
    }

    //int percentage = 85;

    if (pixelY < 500/100*percentage) {
      fill(myPixelColor);
      noStroke();
      rectMode(CENTER);
      rect(width-pixelX, height-pixelY, 10, 10);
    } else {
      isDone = true; 
      rectMode(CORNER);
      fill(255);
      rect(380, 640, 80, 40);

      //NEXT Button text
      textFont(f);
      textAlign(LEFT, TOP);
      fill(255, 0, 0);
      textSize(28);
      text("NEXT", 380, 640, 100);
    }
  }
  void display() {
    textFont(f);       
    fill(255);
    textAlign(CENTER);
    text("Have you ever used a fake name?", width/2, 60);
    text("YES: 85%", width/3, 100);
    text("NO: 15%", width-width/3, 100);
  }
}