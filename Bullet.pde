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
    stroke(255, 255, 255);
    strokeWeight(3);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public float getMyX(){
    return (float)myCenterX;
  }
  public float getMyY(){
    return (float)myCenterY;
  }
  //overrided from move() in Floater class so that bullet disappears when it goes off screen
  public void move(){
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  
    if(myCenterX > width || myCenterX < 0 ||
      myCenterY < 0 || myCenterY > height)
    {     
      bulletsList.remove(this);   
    }    
  }
}
