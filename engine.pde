
hormiga[] ants;

void setup() {
  size(600,600);
  background(0);
  frameRate(2);
  hormiga[] ants = new hormiga[100];
  for (int i=0;i<100;i++) {
    ants[i] = new hormiga(random(0,width),random(0,height));
  }
}

void draw() {
  println(ants);
  for (int i=0;i<ants.length;i++) {
    println(i);
//    ants[i].display();
//    ants[i].move();
  }
}
