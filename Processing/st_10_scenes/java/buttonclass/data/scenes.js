// Scener

var currentScene = 0; 
// array af funktionsnavne på scener
// (det første emne i et array er altid, eks scenes[0]
var scenes = [drawScene0, drawScene1, drawScene2];

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(100);
}

function draw() {
  background(100); 
  // kør den nuværende funktion svarende til værdien af
  // currentScene, eks scenes[0] er funktionsnavnet drawScene0;
  scenes[currentScene]();
}

function mousePressed() {
  // her springer vi frem til det næste emne i scenes array
  // såfremt vi ikke er nået til enden endnu
  // (scenes.length tæller fra 0, så derfor må vi bruge: længde - 1 her
  if (scenes.length-1>currentScene){
    currentScene +=1;
  } else {
  // hvis vi er nået til det sidste emne i vores array
  // så gå tilbage til start
    currentScene = 0;
  }
}
