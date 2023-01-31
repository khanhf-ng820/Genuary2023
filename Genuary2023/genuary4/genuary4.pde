// #genuary2023
// #genuary4

// JAN. 4: Intersections
// Code by: khanhf-ng820

int lineNum = 25;

void setup() {
  size(600, 600);
  blendMode(DIFFERENCE);
}

void draw() {
  background(47, 79, 79);
  
  for (int i = 0; i < lineNum; i++) {
    int x = floor(random(width));
    int y = floor(random(height));
    
    stroke(255);
    strokeWeight(2);
    line(x, 0, 0, y);
  }
  for (int i = 0; i < lineNum; i++) {
    int x = floor(random(width));
    int y = floor(random(height));
    
    stroke(255);
    strokeWeight(2);
    line(x, 0, width, y);
  }
  for (int i = 0; i < lineNum; i++) {
    int x = floor(random(width));
    int y = floor(random(height));
    
    stroke(255);
    strokeWeight(2);
    line(x, height, 0, y);
  }
  for (int i = 0; i < lineNum; i++) {
    int x = floor(random(width));
    int y = floor(random(height));
    
    stroke(255);
    strokeWeight(2);
    line(x, height, width, y);
  }
  noLoop();
}
