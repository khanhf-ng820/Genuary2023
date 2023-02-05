// #genuary2023
// #genuary11

// JAN. 11: Suprematism
// Code by: khanhf-ng820

int rectNum = 10;
int lineNum = 2;

color[] colors = {
                   color(173,255,47),
                   color(176,196,222),
                   color(255,140,0),
                   color(210,105,30),
                   color(188,143,143),
                   color(255,99,71),
                   color(218,112,214),
                   color(255,223,0)
                 };

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255,248,220);
  translate(width/2, height/2);
  rotate(random(TWO_PI));
  
  noStroke();
  translate(-width/2, -height/2);
  for (int i = 0; i < rectNum; i++) {
    fill(colors[floor(random(colors.length))]);
    rect(random(50, width-50), height/2, random(25, 100), random(height/2, height));
  }
  
  stroke(0);
  strokeWeight(3);
  for (int i = 0; i < lineNum; i++) {
    line(random(100), random(height), random(500, width), random(height));
  }
  noLoop();
}
