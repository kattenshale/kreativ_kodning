void setup() {
  size(200, 200);
  frameRate(154);
}

float x = 0.0;

void draw() {

  x = x + 0.1;
  if (x > width) {
    x = 0;
  }
  stroke(150);
  line(x, 0, x, height); 
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}
