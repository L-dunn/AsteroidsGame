public class Asteroid extends Floater{
  private double myRotSpeed;
  
  public Asteroid(){
    myRotSpeed = (Math.random()*1.5) - 0.75;
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;
    myXspeed = (Math.random()*3)-1;
    myYspeed = (Math.random()*3)-1;
    myPointDirection = Math.random()*360;
    
    xCorners[0] = -20;
    xCorners[1] = -10;
    xCorners[2] = 10;
    xCorners[3] = 20;
    xCorners[4] = 0;
    
    yCorners[0] = 0;
    yCorners[1] = -20;
    yCorners[2] = -20;
    yCorners[3] = 0;
    yCorners[4] = 20;
  }
  public float getMyX(){
    return (float)myCenterX;
  }
  public float getMyY(){
    return (float)myCenterY;
  }
  public void move(){
    super.move();
    super.turn(myRotSpeed);
  }
}