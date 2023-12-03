class Asteroid extends Floater
{
  private double myRot;
  Asteroid () {
    myRot = Math.random()*2+1;
    corners = (int)(Math.random()*3+4);
    phil = false;
    myColor = color(255);
    myPointDirection = Math.random()*361;
    myXspeed = Math.random()*5-2.5;
    myYspeed = Math.random()*5-2.5;
    myCenterX = Math.random()*1001;
    myCenterY = Math.random()*1001;
    xCorners = new float[corners];
    yCorners = new float[corners];
    for (int i = 0; i<corners; i++) {
      if (i<corners/2) {
        xCorners[i] = (int)(Math.random()*11+2);
        if (i<corners/4) {
          yCorners[i] = (int)(Math.random()*9+4);
        } else {
          yCorners[i] = (int)(Math.random()*-9-4);
        }
      } else {
        xCorners[i] = (int)(Math.random()*11+2)*-1;
        if (i<corners*3/4) {
          yCorners[i] = (int)(Math.random()*-9-4);
        } else {
          yCorners[i] = (int)(Math.random()*9+4);
        }
      }
    }
  }
  public void move() {
    turn(myRot);
    super.move();
  }
  public void show() {
    super.show();
  }
}
