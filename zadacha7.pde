int x,y,r;
float alf;
void setup ()
{
  size(640,480);
  r=100;
}

void draw ()
{
  stroke(200,0,30);
  strokeWeight(70);
  smooth();
  background(18,25,16);
  alf=alf+3;
  x=320+round(r*cos(PI*alf/180));
  y=240+round(r*sin(PI*alf/180));
  ellipse(x,y,70,70);
}