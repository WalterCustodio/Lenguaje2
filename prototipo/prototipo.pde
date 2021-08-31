Celula[] cels;
Nucleo n;
K8 k;


int circleX, circleY;  

int circleSize = 150;   

color rectColor;
color circleColor;
color baseColor;

boolean rectOver = false;
boolean circleOver = false;


void setup() {
  size(400, 400);

  rectColor = color(0);
  circleColor = color(255);
  baseColor = color(102);
  circleX = 100;
  circleY = 100;

  //n = new Nucleo();

  k = new K8();

  cels = new Celula[10];
  for (int i= 0; i <cels.length; i++) {
    cels[i] = new Celula();
  }
}
void draw() {
  background(255);

  //  Nucleo.display();

  //cels[0].nucleo();

  k.display();

  for (int i= 0; i <cels.length; i++) {
    cels[i].display();

    // cels[i].colision();

    update(mouseX, mouseY);

    noStroke();
    if (rectOver) {
    } else if (circleOver) {
      cels[i].move();
    } // else {
    //  background (255);
    //}

    stroke(255);


   stroke(4);
    noFill();
    ellipse(circleX, circleY, circleSize, circleSize);
    fill(183,66,124);
    ellipse(circleX,circleY, 25,25);
    
  }
}

void update (int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
  } else {
    circleOver = rectOver = false;
  }
}

boolean overCircle(int x, int y, int diameter) {

  float disX = x - mouseX;
  float disY = y - mouseY;

  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
