Cat mycat;
Scrolltext myscrolltext;

void setup(){
    size(400, 400);
}

void draw(){
  background(180);
  
  mycat = new Cat("dog.jpg");
  myscrolltext = new Scrolltext("lyrics.txt");

}
