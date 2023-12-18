class Bullet extends Floater  
{   
  Bullet(Spaceship ship) {
    corners = 4;
    phil = true;
    myColor = color(255);
    myPointDirection = ship.getPD();
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    xCorners = new float[] {-3,-3,3,3};
    yCorners = new float[] {-2,2,2,-2};
    super.accelerate(5);
    myXspeed*=3;
    myYspeed*=3;
  }
}
