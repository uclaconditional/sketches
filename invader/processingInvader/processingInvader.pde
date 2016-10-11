int u; 

void setup() {
  size(700, 700);
  u = width/7;
  noStroke();
  frameRate(1); 
}

void draw() {
  background(0, 0, 255);
  translate(u, u);  
  for (int x = 0; x < 3;x++) {
    for (int y = 0; y < 5; y++) {
      if (random(1) < 0.5) {
        rect(x*u, y*u, u, u);
        rect(((width-u*2)-x*u)-u, y*u, u, u);
      }
    }
  }
}