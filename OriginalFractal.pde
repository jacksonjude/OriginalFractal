public void setup()
{
  size(500, 500, P3D);
  frameRate(60);
  sizeToDraw = width/2;
}

int sizeToDraw;
int drawDirection = 1;

public void draw()
{
  //background(sizeToDraw-width/2, 200, 255);
  colorMode(HSB, width/2);
  fill(255);
  background(255);
  sizeToDraw += 1*drawDirection;
  fractal(0, 0, sizeToDraw);
  if (sizeToDraw == width || sizeToDraw == width/2)
  {
    //sizeToDraw -= width/2;
    drawDirection *= -1;
  }
}

public void fractal(int x, int y, int size)
{
  fill(size, 200, 255);
  pushMatrix();
  translate(x, y, 0);
  rotateY(size*0.05);
  rotateX(-size*0.05);
  rotateZ(-size*0.05);
  box(size/2, size/2, size/4);
  popMatrix();
  //rect(x, y, size, size);
  if (size < 5) return;
  fractal(x, y, size/2);
  fractal(x+size/2, y+size, size/2);
  fractal(x+size, y, size/2);
}
