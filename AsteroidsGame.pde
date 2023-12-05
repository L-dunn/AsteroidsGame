
Spaceship ship = new Spaceship();
Star[] stars = new Star[200];

ArrayList <Asteroid> asteroidsList = new ArrayList <Asteroid>();
ArrayList <Bullet> bulletsList = new ArrayList <Bullet>();
Bullet test = new Bullet(ship);

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
  
  int asteroidIndex = asteroidsList.size() - 1;
  int bulletsIndex = bulletsList.size() - 1;
  
  //checks for collision between spaceship and asteroids and asteroids and bullets
  while(asteroidIndex > 0){
    if(dist(ship.getMyX(), ship.getMyY(), asteroidsList.get(asteroidIndex).getMyX(), asteroidsList.get(asteroidIndex).getMyY()) < 30){
      asteroidsList.remove(asteroidIndex);
    } else {
      asteroidsList.get(asteroidIndex).move();
      asteroidsList.get(asteroidIndex).show();
    }
    while(bulletsIndex > 0){
      if(dist(bulletsList.get(bulletsIndex).getMyX(), bulletsList.get(bulletsIndex).getMyY(), asteroidsList.get(asteroidIndex).getMyX(), asteroidsList.get(asteroidIndex).getMyY()) < 30){
        asteroidsList.remove(asteroidIndex);
        bulletsList.remove(bulletsIndex);
      } else {
        bulletsList.get(bulletsIndex).move();
        bulletsList.get(bulletsIndex).show();
      }
      bulletsIndex--;
    }
    asteroidIndex--;
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
  if(key == ' '){
    bulletsList.add(new Bullet(ship));
  }
}
