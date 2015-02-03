class Ripple {
  int x, y;
  int sca;

  Ripple(int xpos, int ypos, int scale) {
    x = xpos;
    y = ypos;
    sca = scale;
  }

  void display() {
    ellipse(x, y, sca, sca);
    sca++;
  }
}

