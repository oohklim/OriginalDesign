float h = random(100);
float k = random(5);
float j = 0.5;

void setup() {
  size(500,500,P3D);
  colorMode(HSB,100);
  frameRate(20);
  noFill();
}

void draw() {
  background(0, 0, 100);
  translate(250, 250, 0);
  innerPolygon();
  polygon();
  h = h + j;
  k = k + 0.05;
  if (h > 100 || h < 1)
  {
    j = j * -1;
  }
}

void polygon() {
  stroke(0);
  rotateX(k);
  rotateY(-k);
  sphereDetail(1);
  sphere(125);
}

void innerPolygon() {
  stroke(h,50,90);
  rotateX(-k);
  rotateY(k);
  sphereDetail(5);
  sphere(50);
}
