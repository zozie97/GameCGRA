//create object
Object object;
//create blocks
Block block1;
Block block2;
Block block3;
Block block4;
Block block5;
Block block6;
Block block7;
Block block8;
Block block9;
Block block10;
//Block block11;
Block block12;
Block block13;
Block block14;
Block block15;
Block block16;
//create astroids
Asteroid asteroid1;
Asteroid asteroid2;
Asteroid asteroid3;
Asteroid asteroid4;
Asteroid asteroid5;
Asteroid asteroid6;
Asteroid asteroid7;
Asteroid asteroid8;
Asteroid asteroid9;
Asteroid asteroid10;
Asteroid asteroid11;
Asteroid asteroid12;
Asteroid asteroid13;
Asteroid asteroid14;
Asteroid asteroid15;
Asteroid asteroid16;

int objectX = 400;
int objectY = 500;
//boolean moveLeft = false;
//boolean moveRight = false;
//boolean moveUp = false;
//boolean moveDown = false;

PImage startScreen; 
PImage easyBackground;
int stage;

void setup() {
  size(800, 600);

  stage = 1; //start screen
  //startScreen = loadImage("menu.jpg");
  //image(startScreen, 0, 0, width, height);
  background(0);

  //initalise object
  object = new Object(400, 500);
  //initalise blocks
  block1 = new Block(0, 100, 80, 40, 3);
  block2 = new Block(200, 100, 80, 40, 3);
  block3 = new Block(400, 100, 80, 40, 3);
  block4 = new Block(0, 160, 80, 40, -4);
  block5 = new Block(300, 160, 80, 40, -4);
  block6 = new Block(600, 160, 80, 40, -4);
  block7 = new Block(0, 220, 80, 40, 2);
  block8 = new Block(200, 220, 80, 40, 2);
  block9 = new Block(400, 220, 80, 40, 2);
  block10 = new Block(600, 220, 80, 40, 2);
  // block11 = new Block(600, 160, 80, 40, -4);
  block12 = new Block(600, 100, 80, 40, 3);
  block13 = new Block(0, 300, 80, 40, -2);
  block14 = new Block(200, 300, 80, 40, -2);
  block15 = new Block(400, 300, 80, 40, -2);
  block16 = new Block(600, 300, 80, 40, -2);
  //initalise astroids
  asteroid1 = new Asteroid(0, 100, 80, 40, 3);
  asteroid2 = new Asteroid(200, 100, 80, 40, 3);
  asteroid3 = new Asteroid(400, 100, 80, 40, 3);
  asteroid4 = new Asteroid(0, 160, 80, 40, -4);
  asteroid5 = new Asteroid(300, 160, 80, 40, -4);
  asteroid6 = new Asteroid(600, 160, 80, 40, -4);
  asteroid7 = new Asteroid(0, 220, 80, 40, 2);
  asteroid8 = new Asteroid(200, 220, 80, 40, 2);
  asteroid9 = new Asteroid(400, 220, 80, 40, 2);
  asteroid10 = new Asteroid(600, 220, 80, 40, 2);
  // asteroid11 = new Asteroid(600, 160, 80, 40, -4);
  asteroid12 = new Asteroid(600, 100, 80, 40, 3);
  asteroid13 = new Asteroid(0, 300, 80, 40, -2);
  asteroid14 = new Asteroid(200, 300, 80, 40, -2);
  asteroid15 = new Asteroid(400, 300, 80, 40, -2);
  asteroid16 = new Asteroid(600, 300, 80, 40, -2);
}

void draw() {

  if (stage == 1) {
    //menu background image
    //startScreen = loadImage("menu.jpg");
    //image(startScreen, 0, 0, width, height);
    background(0);
    //menu text
    textAlign(CENTER);
    textSize(20);
    text("*** DODGER ***", 400, 100);
    text("LEVELS:", 400, 200);
    text("EASY (Asteroids): Press 'O' to play", 400, 250);
    text("Hard (Road Crossing): Press 'P' to play", 400, 300);
    text("CONTROLS: 'J' = move left, 'L' = move right, 'I' = move up, 'K' = move down", 400, 400);
    text("MENU: Press 'A' to return to this menu", 400, 500);

    if (key == 'p') {
      stage = 2; //easy level
    }
    if (key == 'o') {
      stage = 3; //hard level
    }
  }
  if (stage == 2) {
    Background1(); // calls background

    object.startPosition();

    //object
    object.show();
    object.Left();
    object.Right();
    object.Up();
    object.Down();

    //block
    block1.display();
    block1.move();
    block2.display();
    block2.move();
    block3.display();
    block3.move();
    block4.display();
    block4.move();
    block5.display();
    block5.move();
    block6.display();
    block6.move();
    block7.display();
    block7.move();
    block8.display();
    block8.move();
    block9.display();
    block9.move();
    block10.display();
    block10.move();
    //block11.display();
    //block11.move();
    block12.display();
    block12.move();
    block13.display();
    block13.move();
    block14.display();
    block14.move();
    block15.display();
    block15.move();
    block16.display();
    block16.move();

    if (key == 'a') {
      stage = 1;
    }

    /* else if (objectY <  90) {
     stage = 3;
     }*/
    //block collision detection
    if (block1.collides(object)) {
      object.restart();
    } 
    if (block2.collides(object)) {
      object.restart();
    } 
    if (block3.collides(object)) {
      object.restart();
    } 
    if (block4.collides(object)) {
      object.restart();
    } 
    if (block5.collides(object)) {
      object.restart();
    } 
    if (block6.collides(object)) {
      object.restart();
    } 
    if (block7.collides(object)) {
      object.restart();
    } 
    if (block8.collides(object)) {
      object.restart();
    } 
    if (block9.collides(object)) {
      object.restart();
    } 
    if (block10.collides(object)) {
      object.restart();
    } 
    /*if (block11.collides(object)) {
     object.restart();
     } */
    if (block12.collides(object)) {
      object.restart();
    } 
    if (block13.collides(object)) {
      object.restart();
    } 
    if (block14.collides(object)) {
      object.restart();
    } 
    if (block15.collides(object)) {
      object.restart();
    } 
    if (block16.collides(object)) {
      object.restart();
    }
  }

  if (stage == 3) {
    Background2();

    object.startPosition();

    //object
    object.show();
    object.Left();
    object.Right();
    object.Up();
    object.Down();
    //asteroid
    asteroid1.display();
    asteroid1.move();
    asteroid2.display();
    asteroid2.move();
    asteroid3.display();
    asteroid3.move();
    asteroid4.display();
    asteroid4.move();
    asteroid5.display();
    asteroid5.move();
    asteroid6.display();
    asteroid6.move();
    asteroid7.display();
    asteroid7.move();
    asteroid8.display();
    asteroid8.move();
    asteroid9.display();
    asteroid9.move();
    asteroid10.display();
    asteroid10.move();
    //asteroid11.display();
    //asteroid11.move();
    asteroid12.display();
    asteroid12.move();
    asteroid13.display();
    asteroid13.move();
    asteroid14.display();
    asteroid14.move();
    asteroid15.display();
    asteroid15.move();
    asteroid16.display();
    asteroid16.move();

    //collision detection
    if (asteroid1.collides(object)) {
      object.restart();
    } 
    if (asteroid2.collides(object)) {
      object.restart();
    } 
    if (asteroid3.collides(object)) {
      object.restart();
    } 
    if (asteroid4.collides(object)) {
      object.restart();
    } 
    if (asteroid5.collides(object)) {
      object.restart();
    } 
    if (asteroid6.collides(object)) {
      object.restart();
    } 
    if (asteroid7.collides(object)) {
      object.restart();
    } 
    if (asteroid8.collides(object)) {
      object.restart();
    } 
    if (asteroid9.collides(object)) {
      object.restart();
    } 
    if (asteroid10.collides(object)) {
      object.restart();
    } 
    /*if (asteroid11.collides(object)) {
     object.restart();
     }*/
    if (asteroid12.collides(object)) {
      object.restart();
    } 
    if (asteroid13.collides(object)) {
      object.restart();
    } 
    if (asteroid14.collides(object)) {
      object.restart();
    } 
    if (asteroid15.collides(object)) {
      object.restart();
    } 
    if (asteroid16.collides(object)) {
      object.restart();
    } 

    if (key == 'a') {
      stage = 1;
    }
    /*else if(key == 'r'){
     stage = 3; 
     }
     
     else if (objectY <  90) {
     stage = 2;
     }*/
  }
}

void Background1() {
  //Background
  background(200, 255, 200);
  fill(200, 200, 255);
  rect(0, 90, 800, 280);
  noStroke();
}

void Background2() {
  background(180);
  //background image
  easyBackground = loadImage("hard.jpg");
  image(easyBackground, 0, 0, width, height);
}