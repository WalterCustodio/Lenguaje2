class K8 {


  float x;
  float y;
  float tam;
  float vel;



  K8() {


    x = 700;
    y = 100;
    tam = 20;
    vel = 1;
  }

  void display() {

    pushStyle();

    fill(200,0,0);
    square(x, y, tam);

    x = x -vel;

    popStyle();
  }
}
