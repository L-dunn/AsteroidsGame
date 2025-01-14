public class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      myColor = color(255, 255, 255);
      corners = 4;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      xCorners = new int[corners];
      yCorners = new int[corners];
      
      xCorners[0] = -12;
      xCorners[1] = -24;
      xCorners[2] = 8;
      xCorners[3] = -24;
      
      yCorners[0] = 0;
      yCorners[1] = 8;
      yCorners[2] = 0;
      yCorners[3] = -8;
    }
    public float getMyX(){
      return (float)myCenterX;
    }
    public float getMyY(){
      return (float)myCenterY;
    }
    public double getMyDir(){
      return myPointDirection;
    }
    public double getMyXSpeed(){
      return myXspeed;
    }
    public double getMyYSpeed(){
      return myYspeed;
    }
    public void setCenterX(int x){
      myCenterX = x;
    }
    public void setCenterY(int y){
      myCenterY = y;
    }

    public void hyperspace(){
      this.setCenterX((int)(Math.random() * 481) + 10);
      this.setCenterY((int)(Math.random() * 481) + 10);
      this.myPointDirection = (int)(Math.random() * 361);
      this.myXspeed = 0;
      this.myYspeed = 0;
    }
}
