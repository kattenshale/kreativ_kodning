Button button1, button2, button3;

int mode = 1;

void setup() {
  size(500, 500);
  smooth();

  color gray = color(204);
  color white = color(255);
  color black = color(0);
  
  button1 = new Button(10, 80, 30, gray, white, black); 
  button2 = new Button(45, 80, 30, gray, white, black); 
  button3 = new Button(80, 80, 30, gray, white, black);
}

void draw() { 
  
  background(204); 
  
  manageButtons(); 
  
  noStroke(); 
  fill(0);
  
  if (mode == 1) {
    scene1();
  } else if (mode == 2) {
    scene2();
  } else if (mode == 3) {
    scene3();
  }
}

void manageButtons() {
  button1.update();
  button2.update();
  button3.update();
  button1.display();
  button2.display();
  button3.display();
}

void mousePressed() {
  if (button1.press() == true) { 
    mode = 1;
  }
  if (button2.press() == true) { 
    mode = 2;
  }
  if (button3.press() == true) { 
    mode = 3;
  }
}

void mouseReleased() {
  button1.release();
  button2.release();
  button3.release();
}
