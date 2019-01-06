PImage webImg;
public void setup()
{
	size(500,500);
	background(255,51,153);
}
public void draw()
{
	sierpinski(50,465,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=mouseX+10)
	{
		fill(255, 255, 255);
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}