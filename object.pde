class Object {
  int xPos;
  int yPos;
  int speed;

  Object(int objectX, int objectY) {
    xPos = objectX;
    yPos = objectY;
  }
  //if i set start posisiton to objectX and objectY it goes back to the starting position where i want it to go but will not move
  void startPosition() {
    xPos = 400;
    yPos = 500;
  }

  void show() {
    fill(255, 105, 180);
    rect(objectX, objectY, 30, 30);
  }

  void restart() {
    xPos = 400;
    yPos = 500;
  }

  void Left() {
    objectX -= 40;
  }
  void Right() {
    objectX += 40;
  }
  void Up() {
    objectY -= 40;
  }
  void Down() {
    objectY += 40;
  }
}

void keyPressed() {

  if (key == 'j') {
    object.Left();
  } else if (key == 'l') {
    object.Right();
  } else if (key == 'i') {
    object.Up();
  } else if (key == 'k') {
    object.Down();
  }
}