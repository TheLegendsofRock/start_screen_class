class Startscreen {
  PImage guitar;
  PImage sign;

  Startscreen () {
    guitar = loadImage("guitar.png");
    sign = loadImage("signx.png");
  }
  void display () {
    imageMode(CENTER);
    image(guitar, width/2, height/1.5, 600, 600);
    image(sign, width/2, height/4, 750, 350);
  }
}

