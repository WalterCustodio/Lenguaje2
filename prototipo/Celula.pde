class Celula {

  float x;
  float y;
  float r;
  float velX;
  float velY;



  // nucleo 

  float x1, y1, r1; 

  float d;
  float col;
  
  boolean apagar = false;
  


  Celula() {

    x = random(50,150);
    y = random(50, 150);
    velX= 0;
    velY=0;

    x1 = 100;
    y1 = 100;
    r1= 25;
  }
  void display() {

    pushStyle();

    noStroke();
    fill(0, 100, 0);


    ellipse(x, y, 10, 10);


    popStyle();
  }

  // MOVIMIENTO 
  void move() {

    if (mouseX > x) {
      velX = 0.2;
      x= x+velX;
    } else {
      velX = 0.2;
      x= x-velX;
    }
    if (mouseY > y) {
      velY = 0.2;
      y= y+velY;
    } else if ( mouseY < y) {
      velY = 0.2;
      y= y-velY;
      
      if(apagar = true){
      velX = 0 ;
      
      velY = 0;
      
      }

}

//nucleo 

//void nucleo() {

//  pushStyle();
//  fill(100, 0, 0);

//  ellipse(x1, y1, r1*2, r1*2);

//  popStyle();
//}

//void colision() {

//  d = dist(x, y, x1, y1);

//  if (d < r + r1) {

//    col = true;
//  }
}
}
