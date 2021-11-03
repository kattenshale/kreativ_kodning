class Navngiver {
  String name = "Default navn"; // hvis intet navn bruges

  // interne funktioner, også kaldet metoder
  public void setname(String newname) {
    this.name = newname;
  }

  public void displayname() {
    text(this.name, 70, 70);
    textSize(14);
  }
}

Navngiver person = new Navngiver();

void setup() {

  size(400, 400);
  frameRate(10);
}

void draw() {
  background(200);

  // print til konsol
  println("second: ", second());
  // print til skærm
  text("second: " + second(), 20, 20);

  if (second() > 30) {

    fill(150);
    rect(30, 30, 200, 200);
    fill(0);
    person.setname("Mit navn er Bjarne");
    person.displayname();
  } else {

    fill(150);
    rect(40, 40, width-80, height-80);
    fill(0);
    person.setname("Mit navn er Lis");
    person.displayname();
  }
}
