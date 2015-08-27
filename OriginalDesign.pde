float h = random(255);
float k = random(5);
float j = 1.2;

void setup() {
  size(500,500,P3D);
  frameRate(20);
  noFill();
}

void draw() {
  background(h, 128, 230);
  h = h + j;
  k = k + 0.05;
  if (h > 255 || h < 0)
  {
    j = j * -1;
  }
  translate(250, 250, 0);
  innerPolygon();
  polygon();
}

void polygon() {
  stroke(0);
  rotateX(k);
  rotateY(-k);
  sphereDetail(1);
  sphere(125);
}

void innerPolygon() {
  stroke(255);
  rotateX(-k);
  rotateY(k);
  sphereDetail(5);
  sphere(50);
}
