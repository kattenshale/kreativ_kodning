let button;
function setup() {
  createCanvas(400, 400);
  
  button = createButton('Scene 1');
  button.position(10, 10);
  button.mousePressed(scene1);

  button2 = createButton('Scene 2');
  button2.position(80, 10);
  button2.mousePressed(scene2);
}

function scene1() {
  background(100);
  text("Scene 1", 40, 150);
}

function scene2() {
  background(200);
  text("Scene 2", 40, 150);
}
