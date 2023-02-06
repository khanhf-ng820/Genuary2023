// #genuary2023
// #genuary17

// JAN. 17: A grid inside a grid inside a grid
// Code by: khanhf-ng820

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  
  stroke(255);
  strokeWeight(1);
  grid(0, 0, width, height);
  grid(width/4, height/4, width/4, height/4);
  grid(width*7/16, height*7/16, width/16, height/16);
}

void grid(float x, float y, float w, float h) {
  push();
  translate(x, y);
  line(w/4, 0, w/4, h);
  line(w*2/4, 0, w*2/4, h);
  line(w*3/4, 0, w*3/4, h);
  line(0, h/4, w, h/4);
  line(0, h*2/4, w, h*2/4);
  line(0, h*3/4, w, h*3/4);
  pop();
}
