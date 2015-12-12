Particle [] wat = new Particle[200];

void setup()
{
  size(500,500);
  for (int i = 0; i < wat.length; i++)
  {
    wat[0] = new JumboParticle();
    wat[1] = new OddballParticle();
    wat[i] = new NormalParticle();
  }
}

void draw()
{
  background(0);
  for (int i = 0; i <wat.length ; i++)
  {
    wat[i].move();
    wat[i].show();
  }
}

interface Particle
{
  public void move();
  public void show();
}

class NormalParticle implements Particle
{
  double x, y, angle, speed;
  int colorN; 
  NormalParticle()
  {
    x = 250.0;
    y = 250.0;
    colorN = 200;
    angle = (Math.PI)*(Math.random()*360);
    speed = (Math.random()*6) + 3;
  }
  public void move()
  {
    x += Math.cos(angle)*(speed);
    y += Math.sin(angle)*(speed);
    if (x<-5 || x > 505)
    {
      x = 250.0;
      y = 250.0;
      //x += Math.cos(angle)*(speed);
      //y += Math.sin(angle)*(speed);
    }
    if (y<-5 || y > 505)
    {
      x = 250.0;
      y = 250.0;
      //x += Math.cos(angle)*(speed);
      //y += Math.sin(angle)*(speed);
    }
  }
  public void show()
  {
    noStroke();
    fill(colorN);
    ellipse((float)x, (float)y, 5, 5);
  }
}

class OddballParticle implements Particle
{
  int x, y, color1, color2, color3, size;
  OddballParticle()
  {
    x = 250;
    y = 250;
    size = 20;
    color1 = 255;
    color2 = 51;
    color3 = 52;
  }
  public void move()
  {
    x = x + (int)(Math.random()*10-5);
    y = y + (int)(Math.random()*10-5);
    if (x<-5 || x > 505)
    {
      x = 250;
      y = 250;
    }
    if (y<-5 || y > 505)
    {
      x = 250;
      y = 250;
    }
  }
  public void show()
  {
    noStroke();
    fill(color1, color2, color3);
    ellipse(x, y, size, size);
  }
}

class JumboParticle extends OddballParticle
{
  JumboParticle()
  {
    color1= 51;
    color2= 255;
    color3= 255;
    size = 50;
  }
}
