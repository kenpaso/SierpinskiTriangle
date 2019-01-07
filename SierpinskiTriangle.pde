PImage photo;
public void setup()
{
	size(500,500);
	background(255);
	photo = loadImage("mosiac.jpg");
}
public void draw()
{
	image(photo, 0, 0);
	photo.resize(500, 500);
	background(0);

	image(photo, 0, 0);image(photo, 0, 0);
	sierpinski(50,465,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=mouseX+10)
	{	
		strokeWeight(3);
		fill((int)(Math.random()*235),(int)(Math.random()*135),(int)(Math.random()*15),220);
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}