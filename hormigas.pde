class Hormiga {
  int x, y;
  boolean hungry;
  int[] lastmove = new int[2];

  Hormiga(int xpos, int ypos) {
    x = xpos;
    y = ypos;
    hungry = true;
    
    if (x>width/2) {
      lastmove[0] = -1;
    } else {
      lastmove[0] = 1;
    }
    if (y>height/2) {
      lastmove[1] = -1;
    } else {
      lastmove[1] = 1;
    }
  }
  
  void display() {
    fill(150,150,50);
    ellipse(x,y,10,10);
    ellipse(x,y+10,10,10);
    ellipse(x+10,y,10,10);
  }
  
  void move() {
    if (hungry) {
//      x += int(random(-10,10));
//      y += int(random(-10,10));
      lastmove = smell();
      x += lastmove[0];
      y += lastmove[1];
    }
    
    
    if (findSugar(x,y)==true) {
        hungry = false;
        // does the sugar get eaten?? 
      }
    
  }
  
  int[] smell() {
    // scan up to 30 pixels in each direction for sugar 
    int searchx, searchy;
    int movement[] = new int[2];
    for (int i=0;i<=30;i++) {
      for (int xvect=-1;xvect<=1;xvect++) {
        for (int yvect=-1;yvect<=1;yvect++) {
          searchx = x+xvect*i;
          searchy = y+yvect*i;
          if (findSugar(searchx,searchy)==true) {
            movement[0] = xvect;
            movement[1] = yvect;
            return movement;
          }
        }
      }
    }
    return lastmove;
  }
  
  boolean findSugar(int searchx, int searchy) {
    boolean foundSugar = false;
    try {
      foundSugar = sugar[width*searchy+searchx];
    } catch (NullPointerException e) {
      foundSugar = false; // ant is offscreen (index too high)
    } catch (ArrayIndexOutOfBoundsException e) {
      foundSugar = false; // ant is offscreen (negative index)
    } 
    return foundSugar;
  }
}

