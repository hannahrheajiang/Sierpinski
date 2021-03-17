public void setup()
{
  size(1000, 1000);
  noStroke();
  background(0);
  fill(255);
}
public void draw()
{
  sierpinski(0,height,width);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  //base case
  if (len < 20){
    triangle(x, y, x+len, y, x + (len/2), y - (len/2));
  }
  else {
    sierpinski(x,y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
