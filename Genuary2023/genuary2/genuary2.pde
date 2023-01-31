// #genuary2023
// #genuary2

// JAN. 2: Made in 10 minutes
// HSB noise map
// Code by: khanhf-ng820

int noiseMax = 10;

void setup() {
  size(600, 600);
  colorMode(HSB);
}

void draw() {
  loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float xoff = map(i, 0, width, 0, noiseMax);
      float yoff = map(j, 0, height, 0, noiseMax);
      pixels[i*height+j] = color(map(noise(xoff, yoff), 0, 1, 0, 255), 150, 200);
    }
  }
  updatePixels();
  noLoop();
}
