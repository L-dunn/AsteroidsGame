//your variable declarations here
Spaceship ship = new Spaceship();

public void setup() 
{
  size(500, 500);
}
public void draw() 
{
  ship.show();
}

public void keyPressed(){
  if(keyCode == LEFT){
    ship.setX();
  }

}
