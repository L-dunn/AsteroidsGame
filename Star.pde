class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private  int myRadius;
  public Star(){
    myX = (int)(Math.random() * 501);
    myY = (int)(Math.random() * 501);
    myRadius = (int)(Math.random() * 3) + 1;
  }
  public void show(){
    ellipse(myX, myY, myRadius, myRadius);
  }
}
