boolean run;
boolean flash;
int flashold = 0;
int flashcurrent = 0;
int flashchange = 0;
Startscreen s1;
void setup() {
  size(750, 800);
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
}
void draw() {
  for (int x=0; x< width; x+=50) {
    fill(dist(mouseX, 0, x, 0), 100, 100);
    rect(x, 0, width/8, height);
  }
  if (run == true) {
    background(255, 0, 0);
    fill(0, 0, 99);
    text("good job", width/1.5, height/5);
  }
  else {
    textSize(20);
    fill(255);
    flashcurrent = millis();
    flashchange = flashcurrent - flashold;
    if (flashchange >= 1000) {        
      flash = true;
    }
    if (flash == true) {
      s1.display();
      fill(0, 0, 99);
      text("PLAY GAME", width/3, height/1.45);
    }
  }
}
void mousePressed() {
  if (mouseX <= width/2+200 && mouseX>= width/2-200 && mouseY <= height/2+200 && mouseY >= height/2-200) {
    run = true;
  }
}

