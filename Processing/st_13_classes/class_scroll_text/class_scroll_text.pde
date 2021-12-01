// RUNNING TEXT
Scrolltext myscrolltext;

void setup(){
  size(400,400);
}

void draw(){
  background(0);
  
  myscrolltext = new Scrolltext("lyrics.txt");
  
}
