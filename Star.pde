class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star() {
    myX = (int)(Math.random()*1001);
    myY = (int)(Math.random()*1001);
    myColor = color(255);
  }
  public void baka() {
    noStroke();
    fill(myColor);
    ellipse(myX,myY,3,3);
  }
}
class Back
{
  private float myX, myY;
  private int myColor;
  public Back(int C, int y) {
    myX = 0;
    myY = y;
    myColor = C;
  }
  public void waka() {
    noStroke();
    fill(myColor);
    rect(myX,myY,1000,20);
  }
  public void mov(double s) {
    myY += 0.7 + s;
    if (myY > 2000) {
      myY=0;
    }
  }
}
