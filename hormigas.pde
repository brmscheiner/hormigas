class Hormiga {
  float x, y;
  boolean hungry;
  
  Hormiga(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    hungry = true;
  }
  
  void display() {
    stroke(150,150,50);
    line(x,y,x-6,y-6);
    line(x,y,x+6,y+6);
    line(x,y,x-6,y+6);
    line(x,y,x+6,y-6);
    line(x,y,x+7,y);
    line(x,y,x-7,y);
    fill(150,150,50);
    ellipse(x,y,6,7);
    ellipse(x,y+7,8,10);
    ellipse(x,y-5,6.5,7.5);
    
    //ellipse(x+10,y,10,10);
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

