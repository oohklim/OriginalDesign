import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

float r = 0;

public void setup()
{
  size(500,500);
  background(255);
}

public void draw()
{
  eye();
  tomoe();
  ring();
}

public void tomoe()	
{ 
  translate(250,250);
  r = r + .03f;
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

public void eye()
{
  stroke(0);
  strokeWeight(10);
  fill(255,0,0);
  ellipse(250,250,390,390);
  noStroke();
  fill(0);
  ellipse(250,250,65,65);
}

public void ring()
{
  stroke(0);
  strokeWeight(2);
  noFill();
  ellipse(250,250,220,220);
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
