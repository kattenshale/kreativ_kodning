float x; // Horizontal location
int index = 0; 
// Scrolling headlines 
void runningtext() {

  background(200);

  PFont f; // Global font variable
  f = createFont( "Helvetica", 24);

  // Array of news headlines
  String[] headlines = {
    "All you trekkies and TV addicts", 
    "Don't mean to diss", 
    "Don't mean to bring static", 
    "All you klingons in the fuckin' house", 
    "Grab your backstreet friend and get loud", 
    "Blowin' doors off hinges", 
    "I'll grab you with the pinchers", 
    "And no i didn't retire", 
    "I'll snatch you up", 
    "With the needle nose pliers"
  };

  fill(0, 0, 100);

  // Display headline at x location
  textFont(f, 36);
  textAlign (LEFT);

  // A specific String from the array is displayed according to the value of the "index" variable.
  text(headlines[index], x, height-100); 

  // Decrement x
  x = x - 6;

  // If x is less than the negative width, then it is off the screen
  // textWidth() is used to calculate the width of the current String.
  float w = textWidth(headlines[index]);
  println(x, -w);
  
  if (x < -w) {
    x = width;
    // index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % headlines.length;
  }
}
