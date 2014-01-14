boolean run;
boolean flash;
int flashold = 0;
int flashcurrent = 0;
int flashchange = 0;
int old = 0;
int current = 0;
int change = 0;
int index = 1;
Startscreen s1;
Music[] m = new Music[200];

void setup() {
  size(750, 800);
  strokeWeight(3);
  colorMode(HSB, width, 100, 100);
  s1 = new Startscreen();
  for (int i = 0; i < m.length; i++) {
    m[i] = new Music();
  }
}
void draw() {
  //makes background rainbow
  for (int x=0; x< width; x+=20) {
    fill(dist(mouseX, 100, x, 0), 100, 100);
    rect(x, 0, width/8, height);
  }
  if (run == true) {
    background(255, 0, 0);
    fill(0, 0, 99);
    text("good job", width/1.5, height/5);
  }
  else {
    //says if run isn't true, then flash is true, and if flash is true, display the start screen
    current = millis();
    change = current - old;
    for (int i = 0; i < index; i++) {
      m[i].display();
      m[i].drop();
    }
    if (change >= 1500) {        
      old = current;

      if (index < m.length) {
        index++;
      }
    }
    textSize(20);
    fill(255);
    flashcurrent = millis();
    flashchange = flashcurrent - flashold;
    if (flashchange >= 1000) {        
      flash = true;
    }
    if (flash == true) {
      s1.display();
    }
  }
}
void mousePressed() {
  //if you click "i wanna rock" the game will start
  if (mouseX <= width/2+200 && mouseX>= width/2-200 && mouseY <= height/2+200 && mouseY >= height/2-200) {
    run = true;
  }
}

