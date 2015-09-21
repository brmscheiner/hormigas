class Hormiga {
  float x, y;
  boolean hungry;
  
  Hormiga(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    hungry = true;
  }
  
  void display() {
    fill(150,100,50);
    ellipse(x,y,30,30);
  }
  
  void move() {
    if (hungry) {
      x += int(max(min(random(-10,10),width),0));
      y += int(max(min(random(-10,10),height),0));
      println(x);
      println(y);
    }
//    println(width*y+x);
//    if (sugar[int(width*y+x)]) {
//      hungry = false;
//    }
  }
}

