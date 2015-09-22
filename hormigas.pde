class Hormiga {
  int x, y;
  boolean hungry;
  
  Hormiga(int xpos, int ypos) {
    x = xpos;
    y = ypos;
    hungry = true;
  }
  
  void display() {
    fill(150,150,50);
    ellipse(x,y,10,10);
    ellipse(x,y+10,10,10);
    ellipse(x+10,y,10,10);
  }
  
  void move() {
    if (hungry) {
      x += int(random(-10,10));
      y += int(random(-10,10));
    }
    boolean foundSugar;
    try {
      foundSugar = sugar[width*y+x];
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

