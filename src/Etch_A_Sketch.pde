// Penny Madsen | September 19 2023 | Etch-A-Sketch
int x, y; // Global Variables

void setup() {
  size(700, 400);
  frameRate(10);
  // set start coords
  x=20;
  y=30;
}

void draw() {
 // background(180);
  stroke(0);
  strokeWeight(2);
  //drawName();
  //noLoop();
}

// Algorithm for your first name
void drawName() {
  moveRight(200);
  moveDown(100);
  moveLeft(150);
  moveUp(100);
  moveDown(250);
  moveUp(250);
  moveRight(400);
  moveLeft(150);
  moveDown(270);
  moveLeft(60);
  moveLeftUp(60);
  moveRightDown(60);
  moveRight(200);
  moveUp(250);
  moveRightDown(90);
  moveRightUp(90);
  moveDown(250);
}

// Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x=x+(rep);
}

void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+rep;
}

void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x=x-(rep);
}

void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-(rep);
}

void moveLeftUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y-i);
  }
  y=y-(rep);
  x=x-rep;
}
void moveRightUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y-i);
  }
  y=y-(rep);
  x=x+rep;
}
void moveRightDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y+i);
  }
  y=y+rep;
  x=x+rep;
}
void moveLeftDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y+i);
  }
  y=y+rep;
  x=x-rep;
}

void keyPressed() {
  if(key == 'w' || key== 'W') {
    moveUp(5);
  } else if(key == 'a' || key== 'A') {
    moveLeft(5);
  } else if(key == 's' || key== 'S') {
    moveDown(5);
  } else if(key == 'd' || key== 'D') {
    moveRight(5);
  }
}

//void keyPressed() {
//  if(key == CODED) {
//    if(keyCode == RIGHT) {
//      moveRight(5);
//    } else if(keyCode == DOWN) {
//      moveDown(5);
//    } else if(keyCode == LEFT) {
//      moveLeft(5);
//    } else if(keyCode == UP) {
//      moveUp(5);
//    }
//  }
//}
