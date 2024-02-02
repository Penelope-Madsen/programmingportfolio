// Penny Madsen | September 25 2023 | ConversionApp

void setup() {
  size(800, 500);
  background(#D2D6D8);
}

void draw() {
  background(#D2D6D8);

  // title and developer info
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("Degrees to Radians App | by Penny Madsen", width/2, 40);
  
  // instructions
  textSize(15);
  text("Instructions:", 80, 360);
  text("Move mouse along degree line to find equivalent value in radians", 240, 380);
  text("The black represents the angle", 133, 400);
  textSize(20);

  // reference line or shape with labels
  line(20, height/2, 380, height/2);
  fill(0);
  ellipse(600, height/2, 200, 200);
  fill(#D2D6D8);
  if (mouseX > 19 && mouseX < 381 && mouseY < 300 & mouseY >200) {
    arc(600, height/2, 200, 200, 0, (TWO_PI-(degToRad(mouseX-20))));
    fill(0);
    text(mouseX-20, 220, 150);
    text(degToRad(mouseX-20), 456, 115);
  } else {
    fill(#D2D6D8);
    ellipse(600, height/2, 210, 200);
    fill(0);
    text("0", 220, 150);
    text("0", 450, 115);
  }
  text("Degrees :", 163, 150);
  text("Radians :", 393, 115);
  //mouseClicked();

  // increments or tic marks
  fill(0);
  for (int i=20; i<395; i+=45) {
    line (i, 245, i, 255);
    textSize(12);
    text(i-20, i, 270);
  }
  text("π/2", 600, 130);
  text("π", 480, 250);
  text("0", 720, 250);
  text("3π/2", 600, 380);

  //updated total
  println("Degrees:" + mouseX + " Radians:" + degToRad(mouseX-20));
}
float degToRad(float val) {
  return val = val * (PI/180);
}
