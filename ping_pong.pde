float x, y, speedX, speedY;
float dia = 10;
float rectSize = 200;

void setup() {
  fullScreen();
  fill(255, 255, 0);
  reset();
}

void reset() {
  x = width/2;
  y = height/2;
  speedX = 6;
  speedY = 6;
}

void draw() { 
  background(0,0,255);

  ellipse(x, y, dia, dia);

  rect(0, 0, 20, height);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);

  x += speedX;
  y += speedY;

  //Правоъгълника на мишката
  if ( x > width-30 && x < width -20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) {
    speedX = speedX * -1;
  } 

  //ляв правоъгълник 
  if (x < 25) {
    speedX *= -1.1;
    speedY *= 1.1;
    x += speedX;
  }


  // Когато топчето се удари отгоре или отдолу променя посоката на Y  
  if ( y > height || y < 0 ) {
    speedY *= -1;
  }
}

void mousePressed() {
  reset();
}
