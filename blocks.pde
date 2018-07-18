class Block {

  float xPos;
  float yPos;
  float bWidth;
  float bHeight;
  float speed;

  Block(float blockX, float blockY, float blockWidth, float blockHeight, float blockSpeed) {
    xPos = blockX;
    yPos = blockY;
    bWidth = blockWidth;
    bHeight = blockHeight;
    speed = blockSpeed;
  }


  void display() {
    noStroke();
    fill(255);
    rect(xPos, yPos, bWidth, bHeight);
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

  //collision detection using boolean, does not work. when object is in path of blocks it does not restart

  boolean collides (Object object) {
    if (objectX >= xPos && objectX < xPos + bWidth) {
      if (objectY >= yPos && objectY < yPos + bHeight) {
        return true;
      }
    }

    return false;
  }
}