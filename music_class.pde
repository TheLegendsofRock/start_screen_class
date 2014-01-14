class Music {
  PVector loc, vel, acc;
  int d;
  PImage music;
  Music () {
    music = loadImage("music.gif");
    d = 200;
    loc = new PVector(random(0, width-d/2), -d);
    vel = new PVector(0, random(4, 8));
    acc = new PVector(random(-.05, .05), .05);
  }
  void display () {
    image(music, loc.x, loc.y, d, d);
  }
  void drop() {
    loc.add(vel);
    vel.add(acc);
  }
}

