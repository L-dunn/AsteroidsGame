//your variable declarations here
Spaceship ship = new Spaceship();
Star[] stars = new Star[200];

public void setup() 
{
  size(500, 500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  ship.move();
  ship.show();
}

public void keyPressed(){
  if(key == 'a'){
    ship.turn(-5);
  }
  if(key == 'd'){
    ship.turn(5);
  }
  if(key == 'w'){
    ship.accelerate(2);
  }
  if(key == 's'){
    ship.accelerate(-2);
  }
  if(keyCode == SHIFT){
    ship.hyperspace();
  }
}
