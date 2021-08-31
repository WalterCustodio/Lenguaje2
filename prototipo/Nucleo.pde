class Nucleo {
  float x;
  float y;
  float r;

  Nucleo() {

    x = 100;
    y= 100;
    r = 50;
  }
  void display() {


    stroke(1);
    ellipse(x, y, r*2, r*2);
    noFill();
    ellipse(x, y, r*4, r*4);


  }
}
