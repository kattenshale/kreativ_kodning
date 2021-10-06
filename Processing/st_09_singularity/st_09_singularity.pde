// P_2_0_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//

import processing.pdf.*;
import java.util.Calendar;


boolean savePDF = false;

void setup(){
 
  size(550, 550);
}

void draw(){
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  frameRate(random(6,20));
  strokeCap(SQUARE);
  smooth();
  noFill();
  background(random(0,100),random(100,150),random(100,255));
  translate(width/2,height/2);

  int circleResolution = (int) map(random(width), 0, height, 2,80);
  float radius = random(width)-width/2 + 0.5;
  float angle = TWO_PI/circleResolution;
  stroke(random(255));
  strokeWeight(random(100)/20);

  beginShape();
  for (int i=0; i<=circleResolution; i++){

    float x = cos(angle*i) * radius;
    float y = sin(angle*i) * radius;
    line(0, 0, x, y);
    // vertex(x, y);
  }
  endShape();

  if (savePDF) {
    savePDF = false;
    endRecord();
  }
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
