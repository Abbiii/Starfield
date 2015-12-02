//https://github.com/jessew927/Starfield/blob/gh-pages/Starfield.pde

void setup()
{
	size(500,500);
	Particle[] wat = new Particle[200];
	wat[0] = new JumboParticle();
	wat[1] = new OddballParticle();
	for (int i = 2; i < wat.length; i++)
		wat[i] = new NormalParticle();
}

void draw()
{
	background(0);
	for (int i = 0; i < wat.length; i++)
	{
		wat[i].move();
		wat[i].show();
	}
}

interface Particle
{
	public void move;
	public void show;
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
	void move()
	{

	}
	void show()
	{

	}
}

class OddballParticle implements Particle
{
	
}

class JumboParticle extends OddballParticle
{
	
}
