// #genuary2023
// #genuary23

// JAN. 23: More Moiré
// Code by: khanhf-ng820

int xoff = 0;
int xadd = 1;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  noStroke();
  fill(0);
  for (int a = 0; a <= 360; a += 2) {
    push();
    translate(width/2, height/2);
    triangle(0, 0, 250*cos(radians(a)), 250*sin(radians(a)), 250*cos(radians(a+1)), 250*sin(radians(a+1)));
    translate(xoff, 0);
    triangle(0, 0, 250*cos(radians(a)), 250*sin(radians(a)), 250*cos(radians(a+1)), 250*sin(radians(a+1)));
    pop();
  }
  
  if (xoff > 50 || xoff < -50) {
    xadd *= -1;
  }
  xoff += xadd;
}
