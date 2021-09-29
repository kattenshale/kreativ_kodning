/*
  Kommentarer er bedre end ingen kommentarer.

  Skriv hvad din intention med programmet er,
  vigtige noter eller hvad du har lært mens du har arbejdet med programmet.
  
*/

let balls = [];

function setup() {
  frameRate(40);
  createCanvas(windowWidth, windowHeight);
  for (let i = 0; i < 3; i++) {
    let ball = {
      x: random(width),
      y: random(50),
      dy: 0,
      dx: random(-5, 5)
    };
    balls.push(ball);
  }
}
function mycircle(x, y, size){
  fill('lightgreen');
  return circle(x, y, size);
}

function draw() {
   // background(200);

  for (let ball of balls) {
    ball.x += ball.dx;
    ball.y += ball.dy;
    ball.dy += 0.25;

    // tilføj
    noStroke();


    mycircle(ball.x, ball.y, 50);

    // The ball should bounce off the left and right edges of the canvas
    if (ball.x < 50 || ball.x >= width) {
      ball.dx = -ball.dx;
    }

    // if the ball hits the bottom of the canvas
    // make it go up instead of down
    if (ball.y >= height) {


      // ball.dy = -0.95 * ball.dy;
        ball.dy = -1.0 * ball.dy;
    }

    // prøv at tilføj
    if (ball.y < 0){
      ball.dy = 0.3 * 10;
    }

  }
}
