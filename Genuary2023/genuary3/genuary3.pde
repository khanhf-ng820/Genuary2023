// #genuary2023
// #genuary3

// JAN. 3: Glitch art
// Code by: khanhf-ng820

PImage icon;

void setup() {
  size(600, 600);
  icon = loadImage("processing_icon.png");
  icon.resize(width, height);
  colorMode(HSB);
  blendMode(EXCLUSION);
  rectMode(CENTER);
}

void draw() {
  background(0);
  image(icon, 0, 0);
  
  for (int i = 0; i < 150; i++) {
    noStroke();
    fill(random(255), 150, 200);
    rect(random(width), random(height), random(width/2, width), random(5, 10));
  }
  noLoop();
}
