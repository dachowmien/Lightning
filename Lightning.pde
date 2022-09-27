void setup() {
  size(500, 500);
  frameRate(100);
}

int xstart = 250;
int ystart = 0;

void draw() {
  fill(0, 0, 0, 10);
  rect(-10, -10, 520, 520);
  if (ystart<=125)
    strokeWeight(8);
  else if (ystart<=250)
    strokeWeight(6);
  else if (ystart<=375)
    strokeWeight(4);
  else
    strokeWeight(2);
  int x = xstart + (int)(Math.random()*40-20);
  int y = ystart + (int)(Math.random()*20);
  line(xstart, ystart, x, y);
  xstart = x;
  ystart = y;
}

void mousePressed() {
  redraw();
  xstart = 250 + (int)(Math.random()*100-50);
  ystart = 0;
  int r = (int)(Math.random()*100+155);
  int g = (int)(Math.random()*100+155);
  int b = (int)(Math.random()*100+155);
  stroke(r, g, b);
  background(r-155, g-155, b-155);
}
