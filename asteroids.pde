class Asteroid {

  float xPos;
  float yPos;
  float aWidth;
  float aHeight;
  float speed;

  Asteroid(float asteroidX, float asteroidY, float asteroidWidth, float asteroidHeight, float asteroidSpeed) {
    xPos = asteroidX;
    yPos = asteroidY;
    aWidth = asteroidWidth;
    aHeight = asteroidHeight;
    speed = asteroidSpeed;
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(xPos, yPos, aWidth, aHeight);
  }

  void move() {
    xPos = xPos + speed;
    if (xPos > width) {
      xPos = 0;
    }
    if (xPos < 0) {
      xPos = 800;
    }
  }

  //collision detection using boolean, does not work. when object is in path of asteroids it does not restart
  boolean collides (Object object) {
    if (objectX >= xPos && objectX < xPos + aWidth) {
      if (objectY >= yPos && objectY < yPos + aHeight) {
        return true;
      }
    }

    return false;
  }
}