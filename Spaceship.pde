class Spaceship extends Floater  
{   
  Spaceship() {
    corners = 24;
    myPointDirection = 0;
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = 500;
    myCenterY = 500;
    xCorners = new float[] {12,-12,-3,0,15,0, 30,0,-9,0,30,3,-3,3, 1.5,6,10.5,6, 12,-12,-3,0,15,0};
    yCorners = new float[] {21,21,6,9,6,21, 3,9,0,-9,-3,-4.5,0,4.5, 0,4.5,0,-4.5, -21,-21,-6,-9,-6,-21};
  }
  public void show() {  
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
 
    fill(255);
    stroke(150);
    beginShape();
    for (int i = 0; i<6; i++) {
      vertex(xCorners[i],yCorners[i]);
    }
    endShape(CLOSE);
    beginShape();
    for (int i = 6; i<14; i++) {
      vertex(xCorners[i],yCorners[i]);
    }
    endShape(CLOSE);
    noStroke();
    fill(255,255,0);
    beginShape();
    for (int i = 14; i<18; i++) {
      vertex(xCorners[i],yCorners[i]);
    }
    endShape(CLOSE);
    stroke(150);
    fill(255);
    beginShape();
    for (int i = 18; i<24; i++) {
      vertex(xCorners[i],yCorners[i]);
    }
    endShape(CLOSE);

    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void hyperspace() {
    myPointDirection = (int)(Math.random()*361);
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*801)+100;
    myCenterY = (int)(Math.random()*801)+100;
  }
}
