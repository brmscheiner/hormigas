class hormiga {
  float x;
  float y;
  
  hormiga(float xpos, float ypos) {
    x = xpos;
    y = ypos;
  }
  
  void display() {
    fill(100,100,0);
    ellipse(x,y,30,30);
  }
  
  void move() {
    x += random(-1,1);
    y += random(-1,1);
  }
}

