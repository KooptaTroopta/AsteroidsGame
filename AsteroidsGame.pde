//your variable declarations here
Spaceship bob = new Spaceship();
boolean[] keys = new boolean[4];
Star[] sky = new Star[200];

public void setup() 
{
  size(1000,1000);
  bob.show();
  keys = new boolean[] {false,false,false,false};
  for (int i = 0; i<200; i++) {
    sky[i] = new Star();
  }
}
public void draw() 
{
  noStroke();
  for (int i = 0; i <= 1000; i+= 20) {
    fill(5+i*87/1000.0, 0+i*19.0/1000.0, 87+i*10.0/1000.0);
    rect(0,i,1000,20);
  }
  for (int i = 0; i<200; i++) {
    sky[i].baka();
  }
  bob.move();
  bob.show();
  if (keys[0]) {
    bob.accelerate(0.05);
  }
  if (keys[1]) {
    bob.turn(-3);
  }
  if (keys[2]) {
    bob.accelerate(-0.05);
  }
  if (keys[3]) {
    bob.turn(3);
  }
  if (bob.myPointDirection <= 0)
  bob.myPointDirection = 360;
  if (bob.myPointDirection > 360)
  bob.myPointDirection = 0;
}
public void keyPressed()
{
  if (key == 'w') {
    keys[0] = true;
  }
  if (key == 'a') {
    keys[1] = true;
  }
  if (key == 's') {
    keys[2] = true;
  }
  if (key == 'd') {
    keys[3] = true;
  }
  if (key == 'e') {
    bob.hyperspace();
  }
}
public void keyReleased()
{
  if (key == 'w') {
    keys[0] = false;
  }
  if (key == 'a') {
    keys[1] = false;
  }
  if (key == 's') {
    keys[2] = false;
  }
  if (key == 'd') {
    keys[3] = false;
  }
}
