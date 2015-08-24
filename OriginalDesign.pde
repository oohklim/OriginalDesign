float r = 0;

void setup()
{
  size(500,500);
  background(255);
}

void draw()
{
  eye();
  tomoe();
  ring();
}

void tomoe()	
{ 
  translate(250,250);
  r = r + .03;
  if(r > 0)
  {
  	rotate(r);
  }
  fill(0);
  noStroke();
  arc(-130, 0, 100, 100, 0, PI, CHORD);
  fill(255,0,0);
  ellipse(-155, 0, 50, 50);
  fill(0);
  ellipse(-110, 5, 60, 60);
  translate(-250,-250);
}

void eye()
{
  stroke(0);
  strokeWeight(10);
  fill(255,0,0);
  ellipse(250,250,390,390);
  noStroke();
  fill(0);
  ellipse(250,250,65,65);
}

void ring()
{
  stroke(0);
  strokeWeight(2);
  noFill();
  ellipse(250,250,220,220);
}

