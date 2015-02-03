
ArrayList<Ripple> ripples;

void setup() {
  size(400, 400);

  stroke(255);
  strokeWeight(5);
  noFill();

  ripples = new ArrayList<Ripple>();
}

void draw() {
  background(10);

  for (Ripple a : ripples) {
    a.display();
  }
}

void mousePressed() {
  ripples.add( new Ripple(mouseX, mouseY, 10));
}

