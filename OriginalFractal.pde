public void setup() {
  size(1000, 1000);
  colorMode(HSB);
  strokeWeight(2);
  noFill();
}

public void draw() {
  background(0);
  stroke(255);
  fractalTest(500, 700, 60);
}

public void fractalTest(float x, float y, float side) {
  translate(x, y);
  stroke((mouseX+500)/4-side, 255, 255, side*3);
  line(0, 0, 0, -side);
  
  if (side > 20) {
    
    // LEFT BRANCH
    float angleL = (float)mouseX/10;
    translate(0, -side);
    rotate(radians(-angleL));
    fractalTest(0, 0, 9*side/10);
    rotate(radians(angleL));
    translate(0, side);
    
    // RIGHT BRANCH
    float angleR = (float)mouseY/10;
    translate(0, -side);
    rotate(radians(angleR));
    fractalTest(0, 0, 9*side/10);
    rotate(radians(-angleR));
    translate(0, side);
    
  }
}
