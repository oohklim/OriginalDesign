float h = random(100); 
float j = 0.5;

void setup()
{
  size(500,500,P3D);
  colorMode(HSB,100);
  frameRate(20);
}

void draw()
{
  background(h, 50, 100);
  h = h + j;
  if(h > 100 || h < 0)
  {
    j = j * -1;
  }
  translate(250, 250, 0);
  innerPolygon();
  polygon();
}

void polygon()
{
  stroke(0);
  noFill();
  rotateX(mouseY * 0.01);
  rotateY(mouseX * 0.01);
  sphereDetail(mouseX / 50);
  sphere(125);
}

void innerPolygon()
{
  stroke(0, 3, 100);
  rotateX(mouseX * 0.01);
  rotateY(mouseY * 0.01);
  sphereDetail(5);
  sphere(50);
}
