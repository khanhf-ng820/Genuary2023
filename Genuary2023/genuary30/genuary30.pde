// #genuary2023
// #genuary30

// JAN. 30: Minimalism
// Code by: khanhf-ng820

void setup() {
  size(600, 600);
  colorMode(HSB);
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  noFill();
  strokeWeight(3);
  for (int i = 10; i <= 500; i += 10) {
    stroke((map(i, 10, 500, 0, 255) + frameCount) % 255, 150, 200);
    square(0, 0, i);
  }
  
  strokeWeight(2);
  stroke(255);
  line(0, 0, -250, -250);
  line(0, 0, 250, -250);
  line(0, 0, -250, 250);
  line(0, 0, 250, 250);
}
