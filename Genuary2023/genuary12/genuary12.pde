// #genuary2023
// #genuary12

// JAN. 12: Tessellation
// https://en.wikipedia.org/wiki/Snub_square_tiling
// Code by: khanhf-ng820

int hexRadius = 50;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255, 215, 0);
  
  for (int row = -2; row <= 2; row++) {
    push();
    translate(width/2, height/2 + row*(hexRadius*sqrt(3)+hexRadius));
    for (int i = -2; i <= 2; i++) {
      component(i*(hexRadius*sqrt(3) + hexRadius*3), 0);
      fill(0, 0, 255);
    }
    pop();
  }
  
  translate(hexRadius + hexRadius*sqrt(3)/2 + hexRadius/2, hexRadius/2 + hexRadius*sqrt(3)/2);
  for (int row = -3; row <= 2; row++) {
    push();
    translate(width/2, height/2 + row*(hexRadius*sqrt(3)+hexRadius));
    for (int i = -2; i <= 2; i++) {
      component(i*(hexRadius*sqrt(3) + hexRadius*3), 0);
      fill(0, 0, 255);
    }
    pop();
  }
}

void component(float x, float y) {
  int a = hexRadius;
  float aSqrt3Half = a*sqrt(3)/2;
  
  push();
  
  translate(x, y);
  
  stroke(0);
  strokeWeight(1);
  fill(255, 99, 71);
  
  // Hexagon
  beginShape();
  vertex(a, 0);
  vertex(a/2, -aSqrt3Half);
  vertex(-a/2, -aSqrt3Half);
  vertex(-a, 0);
  vertex(-a/2, aSqrt3Half);
  vertex(a/2, aSqrt3Half);
  endShape(CLOSE);
  
  // Squares
  fill(176, 196, 222);
  
  push();
  translate(a + a*sqrt(3)/2 + a/2, 0);
  square(0, 0, a);
  pop();
  
  push();
  translate(0, -aSqrt3Half - a/2);
  square(0, 0, a);
  pop();
  
  push();
  translate(-aSqrt3Half/2 - a*3/4, -aSqrt3Half/2 - a/4);
  rotate(radians(30));
  square(0, 0, a);
  pop();
  
  push();
  translate(-aSqrt3Half/2 - a*3/4, aSqrt3Half/2 + a/4);
  rotate(radians(-30));
  square(0, 0, a);
  pop();
  
  push();
  translate(0, aSqrt3Half + a/2);
  square(0, 0, a);
  pop();
  
  push();
  translate(aSqrt3Half/2 + a*3/4, aSqrt3Half/2 + a/4);
  rotate(radians(30));
  square(0, 0, a);
  pop();
  
  push();
  translate(aSqrt3Half/2 + a*3/4, -aSqrt3Half/2 - a/4);
  rotate(radians(-30));
  square(0, 0, a);
  pop();
  
  pop();
}
