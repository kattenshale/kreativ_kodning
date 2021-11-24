// reference: box
// https://p5js.org/reference/#/p5/box

// Define the variable to store the graphics
let gfg;

function setup() {
  // Set the canvas
  createCanvas(600, 600, WEBGL);

  // Create a new graphics renderer
  gfg = createGraphics(300, 300);

  // Change the properties of the
  // graphics buffer
  gfg.background(255, 100);
  gfg.textSize(64);
  gfg.fill("green");
  gfg.textAlign(CENTER);
  gfg.textSize(30);
  gfg.text("Kreativ Kodning", 150, 200);
}

function draw() {
  background(0);

  // Add a point light to the scene
  pointLight(255, 255, 255, 0, -200, 200);

  noStroke();
  rotateZ(frameCount * 0.02);
  rotateX(frameCount * 0.02);
  noStroke();

  // Apply the graphics created
  // as a texture
  texture(gfg);

  // Use a box for the texture
  box(150);
}
