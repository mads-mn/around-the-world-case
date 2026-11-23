class movingCloud {

  //Variabler til position, størrelse og farve
  float x, y;
  float farve;
  float speedX;
  float[] offsetY = new float[14];
  float[] sizes = new float[14];

  //Konstruktør
  movingCloud() {
    reset();
    generateShape();
  }
  
  void reset() {
    x = random(-400, -50);
    y = random(15, 250);
    farve = random(230, 255);
    speedX = random(1, 2);
  }

  void generateShape() {
    for (int i = 0; i < 14; i++) {
      offsetY[i] = random(1, 10);
      sizes[i] = random(25, 55);
    }
  }

  void display() {
    fill(farve, 90);
    for (int i = 0; i < 14; i++) {
      circle(x+i*6, y+offsetY[i], sizes[i]);
    }
  }

  void update() {
    x += speedX;
    if (x > width+100) {
      reset();
    }
  }
}
