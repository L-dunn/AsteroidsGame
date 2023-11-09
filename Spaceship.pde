public class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners = 4;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 1;
      myYspeed = 1;
      myPointDirection = -45;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      xCorners[1] = -24;
      xCorners[2] = 16;
      xCorners[3] = -24;
      
      yCorners[0] = 0;
      yCorners[1] = 8;
      yCorners[2] = 0;
      yCorners[3] = -8;
    }
    public setX(int x){
      //calculate how to set coords to preserve shape of ship
      xCorners[0] = ;
      xCorners[1] = ;
      xCorners[2] = ;
      xCorners[3] = ;
    }
    public setY(int y){
      yCorners[0] = ;
      yCorners[1] = ;
      yCorners[2] = ;
      yCorners[3] = ;
    }
}
