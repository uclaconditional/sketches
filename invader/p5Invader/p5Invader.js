var u = 0; 

function setup() {
  createCanvas(700, 700);
  u = width/7;
  noStroke();
  frameRate(1); 
}

function draw() {
  background(0, 0, 255);
  translate(u, u);  
  for (var x = 0; x < 3;x++) {
    for (var y = 0; y < 5; y++) {
      if (random(1) < 0.5) {
        rect(x*u, y*u, u, u);
        rect(((width-u*2)-x*u)-u, y*u, u, u);
      }
    }
  }
}