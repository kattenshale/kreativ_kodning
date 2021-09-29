// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

// Example 1-2: Bouncing Ball, with PVector!
PVector position;
PVector velocity;

void setup() {
  size(200,200);
  background(255);
  position = new PVector(100,100);
  velocity = new PVector(2.5,5);
}

void draw() {
  
  // this line will start pdf export, if the variable savePDF was set to true 
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");

  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  
  // Add the current speed to the position.
  position.add(velocity);

  if ((position.x > width) || (position.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((position.y > height) || (position.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  // Display circle at x position
  stroke(0);
  fill(175);
  ellipse(position.x,position.y,16,16);
}

void keyPressed() {
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
  if (key=='p' || key=='P') savePDF = true;
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
