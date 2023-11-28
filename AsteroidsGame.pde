//your variable declarations here
Spaceship ship = new Spaceship();
Star[] stars = new Star[200];
//Asteroid oneAsteroid = new Asteroid();

ArrayList <Asteroid> asteroidsList = new ArrayList <Asteroid>();

public void setup() 
{
  size(500, 500);
  //make stars
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  //make asteroids
  for(int i = 0; i < 10; i++){
    asteroidsList.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(Asteroid asteroid : asteroidsList){
    asteroid.move();
    asteroid.show();
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
