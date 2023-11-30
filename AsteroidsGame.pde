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
  int index = 0;
  while(index < asteroidsList.size()){
    if(dist(ship.getMyX(), ship.getMyY(), asteroidsList.get(index).getMyX(), asteroidsList.get(index).getMyY()) < 30){
      asteroidsList.remove(index);
    } else {
      asteroidsList.get(index).move();
      asteroidsList.get(index).show();
      index++;
    }
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
