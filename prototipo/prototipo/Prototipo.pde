Nucleo nucleo;
Personajes personajes;
Enemigos enemigos;

void setup() {
  size(400, 400);
}

void draw() {
  background(220);
  noStroke();
  nucleo = new Nucleo();
  personajes = new Personajes();
  enemigos = new Enemigos();
  
  }
