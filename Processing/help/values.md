# HELP
---

IF-ELSE
    let a = 4;
    if (a > 0) {
        console.log('positive');
    } else {
        console.log('negative');
    }

---

FOR LOOP
for (let i = 0; i < 9; i++) {
  console.log(i);
}

---

FUNCTIONS
// variable
let myName = 'Hridi';

// function
function sayHello(name) {
  console.log('Hello ' + name + '!');
}

// run function
sayHello(myName); // calling the function, prints "Hello Hridi!" to console.

---
VÆRDIER

# X & Y koordinater

hvor er midten af canvas?
width/2
height/2

eks: ellipse(width/2, height/2, 320, 320);

og rectmode eks:

// draw next rectangle with (21, 22) as center
rectMode(CENTER);
fill(255, 0, 0);
rect(21, 22, 70, 30, 10);

// draw next rectangle with (21, 22) as top-left corner
rectMode(CORNER);
fill(0, 0, 255);
rect(21, 22, 70, 30, 10);

# Brug PI som værdi (3.14159)
PI
