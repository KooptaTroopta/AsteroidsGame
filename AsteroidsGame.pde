//your variable declarations here
Spaceship bob = new Spaceship();
boolean[] keys = new boolean[6];
Star[] sky = new Star[200];
Back[] rec = new Back[200];
ArrayList <Asteroid> cob = new ArrayList <Asteroid>();
boolean crash = false;
boolean crush = false;
ArrayList <Bullet> lets = new ArrayList<Bullet>();

public void setup() 
{
  frameRate(80);
  size(1000,1000);
  bob.show();
  keys = new boolean[] {false,false,false,false,false,false};
  for (int i = 0; i<200; i++) {
    sky[i] = new Star();
  }
  for (int i = 0; i<100; i++) {
    rec[i] = new Back(color(5+i*87.0/100.0, 0+i*19.0/100.0, 87+i*10.0/100.0),i*10);
  }
  for (int i = 100; i<200; i++) {
    rec[i] = new Back(color(92-(i-100)*87.0/100.0, 19-(i-100)*19.0/100.0, 97-(i-100)*10.0/100.0),i*10);
  }
  for (int i = 0; i<10; i++) {
    cob.add(new Asteroid());
  }
}
public void draw() 
{
  noStroke();
  for (int i = 0; i < 200; i++) {
    rec[i].mov(Math.sqrt(bob.myXspeed*bob.myXspeed+bob.myYspeed*bob.myYspeed)/1.5);
    rec[i].waka();
  }
  for (int i = 0; i<200; i++) {
    sky[i].baka();
  }
  for (int i = 0; i<cob.size(); i++) {
    for (int j = 0; j<cob.get(i).getC(); j++) {
      for (int k = 0; k<bob.getC(); k++) {
        double d = dist(cob.get(i).getCX(j),cob.get(i).getCY(j),bob.getCX(k),bob.getCY(k));
        if (d <= 5)
        crash = true;
      }
      for (int l = 0; l<lets.size(); l++) {
        double di = dist(lets.get(l).getX(),lets.get(l).getY(),cob.get(i).getCX(j),cob.get(i).getCY(j));
        if (di <= 5) {
          crush = true;
          lets.remove(l);
          l--;
        }
      }
    }
    cob.get(i).move();
    cob.get(i).show();
    if (crash) {
      cob.remove(i);
    }
    if (crush) {
      cob.remove(i);
    }
    crash = false;
    crush = false;
  }
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
  if (keys[4]) {
    lets.add(new Bullet(bob));
  }
  if (keys[5]) {
    cob.add(new Asteroid());
  }
  for (int i = 0; i<lets.size(); i++) {
    lets.get(i).move();
    lets.get(i).show();
    if (lets.get(i).getX() > width - 5|| lets.get(i).getY() > height - 5 || lets.get(i).getX() < 5|| lets.get(i).getY() < 5) {
      lets.remove(i);
      i--;
    }
  }
  bob.move();
  bob.show();
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
  if (key == ' ') {
    keys[4] = true;
  }
  if (key == 'r') {
    keys[5] = true;
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
  if (key == ' ') {
    keys[4] = false;
  }
  if (key == 'r') {
    keys[5] = false;
  }
}
