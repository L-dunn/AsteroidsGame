public class Asteroid extends Floater{
  private double myRotSpeed;
  private int scaleFactor;
  public Asteroid(){
    scaleFactor = (int)(Math.random() * 2) + 1;
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
    
    xCorners[0] = -20 * scaleFactor;
    xCorners[1] = -10 * scaleFactor;
    xCorners[2] = 10 * scaleFactor;
    xCorners[3] = 20 * scaleFactor;
    xCorners[4] = 0;
    
    yCorners[0] = 0;
    yCorners[1] = -20 * scaleFactor;
    yCorners[2] = -20 * scaleFactor;
    yCorners[3] = 0;
    yCorners[4] = 20 * scaleFactor;
  }
  public float getMyX(){
    return (float)myCenterX;
  }
  public float getMyY(){
    return (float)myCenterY;
  }
  public int getScaleFactor(){
    return scaleFactor;
  }
  public void move(){
    super.move();
    super.turn(myRotSpeed);
  }
  public void show(){
    noFill();
    strokeWeight(3);
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }  
}
