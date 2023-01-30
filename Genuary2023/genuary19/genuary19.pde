// #genuary2023
// #genuary19

// JAN. 19: Black and white
// Code by: khanhf-ng820

void setup() {
  size(600, 600);
  rectMode(CENTER);
  blendMode(DIFFERENCE);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  for (int i = 0; i < 10; i++) {
    push();
    translate(random(width), random(height));
    rotate(random(TWO_PI));
    rect(0, 0, random(width/2), random(height/2));
    pop();
  }
  noLoop();
}
