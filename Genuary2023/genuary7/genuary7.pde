// #genuary2023
// #genuary7

// JAN. 7: Sample a color palette from your favorite movie/album cover
// Image from album cover of "In Rainbows" by Radiohead.
// Code by: khanhf-ng820

PImage inRainbows;

void setup() {
  size(600, 600);
  inRainbows = loadImage("inrainbows.jpg");
  inRainbows.resize(width, height);
  background(0);
  noStroke();
}

void draw() {
  int x = floor(random(width));
  int y = floor(random(height));
  color c = inRainbows.get(x, y);
  fill(c, 100);
  circle(x, y, random(1, 25));
}
