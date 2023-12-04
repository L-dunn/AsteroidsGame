public class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getMyX();
    myCenterY = ship.getMyY();
    myXspeed = ship.getMyXSpeed();
    myYspeed = ship.getMyYSpeed();
    myPointDirection = ship.getMyDir();
    accelerate(6.0);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
    
}
