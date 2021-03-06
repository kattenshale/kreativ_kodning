// P_2_0_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//

import processing.pdf.*;
import java.util.Calendar;

float rate = 1;
boolean savePDF = false;

void setup() {

  PFont mono;
  // The font "andalemo.ttf" must be located in the 
  // current sketch's "data" directory to load successfully
  mono = createFont("bdplakatt.ttf", 90);
  background(0);
  textFont(mono);
  size(550, 550);
}

void draw() {

  if (savePDF) beginRecord(PDF, timestamp()+".pdf");

  frameRate(rate);
  background(second()*0.3, random(100, 150), random(0, 255));
  strokeCap(SQUARE);
  smooth();
  noFill();

  text(frameRate, 10, 50);
  //println(frameRate);
  translate(width/2, height/2);

  int circleResolution = (int) map(random(width-30), 0, height-30, 3, 80);
  float radius = random(width)-width/2 + 0.5;
  float angle = TWO_PI/circleResolution;

  if (second() % 3 == 0) {
    stroke(random(0, 200));
  } else
  {
    stroke(random(200, 255));
  }

  strokeWeight(random(10, 40));

  dynamicFrameRate();

  beginShape();

  for (int i=0; i<=circleResolution; i++) {

    float x = cos(angle*i) * radius;
    float y = sin(angle*i) * radius;
    line(0, 0, x, y);
    // vertex(x, y);
  }
  endShape();
  MyText();

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void dynamicFrameRate() {

  float min = 4.5;
  float max = 9;

  if (rate >= max) {
    rate = min;
  }


  if (second() % 3 == 0) {
    rate += random(min, max);
  }
}

void MyText() {

  String myText = "";

  if (second() % 8 == 0) {

    myText = "KREATIV  KODNING";
  } else {

    myText = "";
  }

  translate(-width/2, 0);
  fill(25);
  text(myText, 20, 20);
}

void keyPressed() {
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
  if (key=='p' || key=='P') savePDF = true;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
