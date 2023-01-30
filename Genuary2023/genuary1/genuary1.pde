// #genuary2023
// #genuary1

// JAN. 1: Perfect loop / Infinite loop / endless GIFs
// Code by: khanhf-ng820

int curveNum = 25;
int maxHeight = 20;
float noiseMax = 0.8; // Lower = Smoother
float phase = 0;

void setup() {
  size(600, 600);
  colorMode(HSB);
}

void draw() {
  background(0);
  noFill();
  strokeWeight(2);
  stroke(0, 175, 200);
  translate(0, height/2);
  line(0, 0, width, 0);
  
  for (int curve = 1; curve <= curveNum; curve++) {
    stroke(map(curve, 1, 25, 0, 255), 175, 200);
    
    // Lower half
    beginShape();
    for (int i = 0; i <= width; i += 5) {
      float angle = map(i, 0, width, 0, TWO_PI);
      float xoff = map(cos(angle + phase), -1, 1, 0, noiseMax);
      float yoff = map(sin(angle), -1, 1, 0, 0.5);
      float h = map(noise(xoff, yoff), 0, 1, 0, maxHeight);
      
      vertex(i, h*curve);
    }
    endShape();
    
    // Upper half
    beginShape();
    for (int i = 0; i <= width; i += 5) {
      float angle = map(i, 0, width, 0, TWO_PI);
      float xoff = map(cos(angle + phase), -1, 1, 0, noiseMax);
      float yoff = map(sin(angle), -1, 1, 0, 0.5);
      float h = map(noise(xoff, yoff), 0, 1, 0, -maxHeight);
      
      vertex(i, h*curve);
    }
    endShape();
  }
  
  phase += 0.1;
}
