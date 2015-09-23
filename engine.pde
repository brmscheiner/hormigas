
Hormiga[] ants;
Boolean[] sugar;
int[] smell;
int n;

void setup() {
  size(650,500);
  background(0);
//  frameRate(8);
  
  setSugar();
  n=5;
  
  ants = new Hormiga[n];
  for (int i=0;i<n;i++) {
    ants[i] = new Hormiga(int(random(0,width)),int(random(0,height)));
  }
}

void draw() {
  background(0);
  for (int i=0;i<ants.length;i++) {
    ants[i].display();
    ants[i].move();
  }
}
