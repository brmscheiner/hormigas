class Hormiga {
  float x, y;
  
  Hormiga(float xpos, float ypos) {
    x = xpos;
    y = ypos;
  }
  
  void display() {
    fill(150,100,50);
    ellipse(x,y,30,30);
  }
  
  void move() {
    x += random(-10,10);
    y += random(-10,10);
  }
}

