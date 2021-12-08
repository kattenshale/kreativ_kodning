var video;
var x = 0;
var pg;

function setup() {
  canvas = createCanvas(800, 240);
  pixelDensity(1);
  video = createCapture(VIDEO);
  video.size(320, 240);
  frameRate(20);
}


function draw() {
  //background(51);
  video.loadPixels();

  var w = video.width;
  var h = video.height;
  
  copy(video, w/2, 0, 1, h, x, 0, 1, h);
  
  x = x + 1;
  
  if (x > displayWidth/2){
    x = 0;
  }

}

function keyTyped() {

  // save image
  if (key === 'q') {
    save("pg.png");
  }
  // clear video
  if (key === 'w'){
    background(255);
  }
}
