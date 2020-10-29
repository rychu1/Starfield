Particle[] parts;
void setup()
{
  size (1000,1000);
  parts = new Particle[1000];
  for(int i = 0; i<parts.length; i++) {
    parts[i] = new Particle();
    parts[0] = new OddballParticle();
  }
}
void draw()
{
  background(0);
 for(int i = 0; i<parts.length; i++) {
    parts[i].move();
    parts[i].show();
  }
}
class Particle
{
  double myx, myy, myspeed, myangle;
  int mycolor;
  Particle()
  {
    myx = 500;
    myy = 500;
    mycolor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myangle = (Math.random()*2*Math.PI);
    myspeed = Math.random()*15;
  }
  void move() {
    myx = myx + myspeed*Math.cos(myangle);
    myy = myy + myspeed*Math.sin(myangle);
  }
  void show() {
    fill(mycolor);
    ellipse((float)myx, (float)myy, 25, 25);
}

class OddballParticle extends Particle
{
  OddballParticle() {
    myx = 500;
    myy = 500;
    mycolor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myangle = (Math.random()*2*Math.PI);
    myspeed = Math.random()*5;
  }
  void show() {
    fill(mycolor);
    ellipse((float)myx, (float)myy, 100, 100);
  }
  void move() {
    myy = myy + myspeed;
  }
}
}
