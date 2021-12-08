var img;
//var sourceX = 0;
var destX = 0;

function preload() {
  img = loadImage("test.jpg");
}
function setup() {
  createCanvas(1056, 650);
  background(255);
}

function draw() {
  // resize image according to aspect ratio
  let newW = aspectRatio(img.width, img.height, displayHeight);
  sourceX = int(mouseX);
  
  image(img, 0, displayHeight/3, newW.w, newW.h);

  // https://p5js.org/reference/#/p5.Image/copy
  copy(sourceX, displayHeight/2, 1, newW.w, destX, 0, 1, newW.w);
  
  //sourceX = sourceX + 1;
  if(destX > img.width) {
    destX = 0;
  }
  else {
    destX = destX + 1;
  }
}
