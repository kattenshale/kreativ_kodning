// Scroll-text
String[] lines;
int index = 0;
float x; // Horizontal location

class Scrolltext{
 
  Scrolltext(String lyricsfile){
    
  // load text from external file
  lines = loadStrings(lyricsfile);
  runningtext();
  }

  void runningtext() {
  // set font
  PFont f; // Global font variable
  f = createFont( "Helvetica", 24);
  textSize(18);

  fill(244, 164, 164);
  // Display headline at x location

  textFont(f, 16);
  textAlign (LEFT);

  textSize(36);
  // A specific String from the array is displayed according to the value of the "index" variable.
  text(lines[index], x, height-30); 

  // Decrement x
  x = x - 6;

  // If x is less than the negative width, then it is off the screen
  // textWidth() is used to calculate the width of the current String.
  float w = textWidth(lines[index]);

  if (x < -w) {
    x = width;
    // index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % lines.length;
  }
  }
  
}
