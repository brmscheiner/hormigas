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
    stroke(191, 113, 12);
    fill(191, 113, 12);
    line(x, y, x-6, y-6);
    line(x, y, x+6, y+6);
    line(x, y, x-6, y+6);
    line(x, y, x+6, y-6);
    line(x, y, x+7, y);
    line(x, y, x-7, y);
    ellipse(x, y, 6, 7);
    ellipse(x, y+7, 8, 10);
    ellipse(x, y-5, 6.5, 7.5);

    //ellipse(x+10,y,10,10);
  }

  void move() {
    if (hungry) {
      //      x += int(random(-10,10));
      //      y += int(random(-10,10));
      lastmove = smell();
      x += lastmove[0];
      y += lastmove[1];
        if (findSugar(x, y)==true) {
          hungry = false;
          // does the sugar get eaten??
        }
    } else {
      
      
      int searchx, searchy;
      searchx = x+lastmove[0];
      searchy = y+lastmove[1];
      if (findSugar(searchx, searchy)==true && abs(lastmove[0])+abs(lastmove[1])>0 ) {
        x += lastmove[0];
        y += lastmove[1];
      } else {
        searchx = x + int(random(0,2.999)) - 1;
        searchy = y + int(random(0,2.999)) - 1;
        if (findSugar(searchx, searchy)==true) {
          lastmove[0] = searchx-x;
          lastmove[1] = searchy-y;
          x += lastmove[0];
          y += lastmove[1];
        } else {
          lastmove[0] = 0;
          lastmove[1] = 0;
        }
        
        
      }
    }
  }

  int[] smell() {
    // scan up to 30 pixels in each direction for sugar 
    int searchx, searchy;
    int movement[] = new int[2];
    for (int i=0; i<=5; i++) {
      for (int xvect=-1; xvect<=1; xvect++) {
        for (int yvect=-1; yvect<=1; yvect++) {
          searchx = x+xvect*i;
          searchy = y+yvect*i;
          if (findSugar(searchx, searchy)==true) {
            movement[0] = xvect;
            movement[1] = yvect;
            return movement;
          }
        }
      }
    }
    //wiggles
    if (random(0, 1)>0.94) {
      if (lastmove[0]==0) {
        if (random(0, 1)>0.5) {
          movement[0] = 1;
          movement[1] = lastmove[1];
        } else {
          movement[0] = -1;
          movement[1] = lastmove[1];
        }
      } else if (lastmove[1]==0) {
        if (random(0, 1)>0.5) {
          movement[1] = 1;
          movement[0] = lastmove[0];
        } else {
          movement[1] = -1;
          movement[0] = lastmove[0];
        }
      } else {
        if (random(0, 1)>0.5) {
          movement[0] = 0;
          movement[1] = lastmove[1];
        } else {
          movement[1] = 0;
          movement[0] = lastmove[0];
        }
      }
    } else {
      movement = lastmove;
    }
    return movement;
  }

  boolean findSugar(int searchx, int searchy) {
    boolean foundSugar = false;
    try {
      foundSugar = sugar[width*searchy+searchx];
    } 
    catch (NullPointerException e) {
      foundSugar = false; // ant is offscreen (index too high)
    } 
    catch (ArrayIndexOutOfBoundsException e) {
      foundSugar = false; // ant is offscreen (negative index)
    } 
    return foundSugar;
  }
}

