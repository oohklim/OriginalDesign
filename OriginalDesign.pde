float h = random(100);
float k = random(5);
float j = 0.5;

void setup()
{
  size(500,500,P3D);
  colorMode(HSB,100);
  frameRate(20);
}

void draw()
{
  background(h, 50, 90);
  h = h + j;
  k = k + 0.05;
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
  rotateX(k);
  rotateY(-k);
  sphereDetail(1);
  sphere(125);
}

void innerPolygon()
{
  stroke(0, 3, 100);
  rotateX(-k);
  rotateY(k);
  sphereDetail(5);
  sphere(50);
}
