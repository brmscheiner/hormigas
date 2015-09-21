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
    ellipse(x,y,10,10);
  }
  
  void move() {
    if (hungry) {
      x += random(-10,10);
      y += random(-10,10);
    }
    boolean foundSugar;
    try {
      foundSugar = sugar[int(width*y+x)];
    } catch (NullPointerException e) {
      foundSugar = false; // ant is offscreen
    } catch (ArrayIndexOutOfBoundsException e) {
      foundSugar = false; // ant is offscreen
    } 
    
    if (foundSugar==true) {
        hungry = false;
      }
    
  }
}

