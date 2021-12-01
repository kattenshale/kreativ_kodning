
// CAT MEME
class Cat {
  PImage photo;

  Cat(String imgname) {
    photo = loadImage(imgname);
    display();
  }
  
  void display(){

    background(0);

    //photo.filter(BLUR, 6);
    //photo.filter(INVERT);

    smooth();
   

    // Scene 1: 2 cats

    textSize(12);

    PFont Impactfont; // Global font variable
    Impactfont = createFont( "Impact", 24);
    textFont(Impactfont);

    fill(118, 182, 223);
    rect(20, 20, width-40, height-40);

    fill(241, 48, 130);
    rect(40, 40, width-80, height-80);

    image(photo, width/4, 100, width/2, height/2);


    stroke(0);
    fill(240, 208, 216);
    textSize(30);
    text("EVERYONE IS EQUAL...", 54, 82);
    textSize(50);
    text("EQUALLY STUPID", 43, 350);
  }  

}
