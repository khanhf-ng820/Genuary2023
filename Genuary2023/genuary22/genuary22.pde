// #genuary2023
// #genuary22

// JAN. 22: Shadows
// Code by: khanhf-ng820

void setup() {
  size(600, 600);
}

void draw() {
  background(255,248,220);
  
  for (int i = 0; i < 20; i++) {
    float a = random(TWO_PI);
    float x = random(50, width-50);
    float y = random(50, height-50);
    
    push();
    
    translate(x, y);
    rotate(a);
    noStroke();
    fill(100, 100);
    square(0, 0, 50);
    
    rotate(-a);
    translate(-10, -5);
    
    rotate(a);
    stroke(1);
    fill(224, 255, 255);
    square(0, 0, 50);
    
    pop();
  }
  noLoop();
}
