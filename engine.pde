
Hormiga[] ants;
Boolean[] sugar;

void setup() {
  size(600,600);
  background(0);
//  frameRate(2);
  
  ants = new Hormiga[100];
  for (int i=0;i<100;i++) {
    ants[i] = new Hormiga(random(0,width),random(0,height));
  }
}

void draw() {
  background(0);
  for (int i=0;i<ants.length;i++) {
    ants[i].display();
    ants[i].move();
  }
}
