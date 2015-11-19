//https://github.com/jessew927/Starfield/blob/gh-pages/Starfield.pde
void setup()
{
	size(500,500);
}

void draw()
{
	
}

interface Particle
{
	
}

class NormalParticle implements Particle
{
	double x, y, angle, speed;
	int colorP; 
	NormalParticle()
	{

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
