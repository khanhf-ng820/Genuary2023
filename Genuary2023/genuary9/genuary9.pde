// #genuary2023
// #genuary9

// JAN. 9: Plants
// Code by: khanhf-ng820

float angle = 30;

void setup() {
  size(600, 600);
}

void draw() {
  background(135, 206, 235);
  stroke(34, 139, 34);
  strokeWeight(2);
  translate(width/2, height);
  tree(150);
}

void tree(float len) {
  line(0, 0, 0, -len);
  translate(0, -len);
  if (len > 8){
    push();
    rotate(radians(angle));
    tree(len * 2/3);
    pop();
    
    push();
    tree(len * 2/3);
    pop();
    
    push();
    rotate(radians(-angle));
    tree(len * 2/3);
    pop();
  }
}
