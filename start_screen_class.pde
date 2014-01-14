class Startscreen {
  PImage guitar, play, sign;

  Startscreen () {
    guitar = loadImage("guitar.png");
    sign = loadImage("signx.png");
    play = loadImage("play.png");
  }
  void display () {
    imageMode(CENTER);
    image(guitar, width/2, height/1.5, 600, 600);
    image(sign, width/2, height/4, 750, 350);
    image(play, width/2.75, height/1.47, 150, 100);
  }
}

