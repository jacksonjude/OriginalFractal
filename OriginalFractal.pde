public void setup()
{
  size(500, 500);
  frameRate(60);
}

int sizeToDraw = 100;

public void draw()
{
  //background(sizeToDraw-width/2, 200, 255);
  //colorMode(HSB, width/2);
  fill(255);
  background(255);
  sizeToDraw++;
  fractal(0, 0, sizeToDraw);
  if (sizeToDraw == width)
  {
    sizeToDraw -= width/2;
  }
}

public void fractal(int x, int y, int size)
{
  //fill(size, 200, 255);
  //pushMatrix();
  //translate(x, y, 0);
  //rotateY(0.5);
  //box(size, size, 1);
  //popMatrix();
  rect(x, y, size, size);
  if (size < 5) return;
  fractal(x, y, size/2);
  fractal(x+size/2, y+size, size/2);
  fractal(x+size, y, size/2);
}
