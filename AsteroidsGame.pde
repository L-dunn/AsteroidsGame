
Spaceship ship = new Spaceship();
Star[] stars = new Star[200];

ArrayList <Asteroid> asteroidsList = new ArrayList <Asteroid>();
ArrayList <Bullet> bulletsList = new ArrayList <Bullet>();

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
  for(int i = 0; i < asteroidsList.size(); i++){
    asteroidsList.get(i).show();
    asteroidsList.get(i).move();
  }
  for(int i = 0; i < bulletsList.size(); i++){
    bulletsList.get(i).show();
    bulletsList.get(i).move();
  }
  //checks for collision between asteroid and spaceship
  for(int i = asteroidsList.size() - 1; i >= 0; i--){
    Asteroid currAsteroid = asteroidsList.get(i);
    if(dist(ship.getMyX(), ship.getMyY(), asteroidsList.get(i).getMyX(), asteroidsList.get(i).getMyY()) < 35){
      asteroidsList.remove(currAsteroid);
    }
  }
  
  //checks for collision between asteroids and bullets
  for(int i = 0; i < bulletsList.size(); i++){
    for(int j = 0; j < asteroidsList.size(); j++){
      if(dist(bulletsList.get(i).getMyX(), bulletsList.get(i).getMyY(), asteroidsList.get(j).getMyX(), asteroidsList.get(j).getMyY()) < 35){
        asteroidsList.remove(j);
        bulletsList.remove(i);
        break;
      }
    }
  }
 
  ship.move();
  ship.show();
}

public void keyPressed(){
  if(key == 'a'){
    ship.turn(-10);
  }
  if(key == 'd'){
    ship.turn(10);
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
  if(key == ' '){
    bulletsList.add(new Bullet(ship));
  }
}
