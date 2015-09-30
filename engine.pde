
Hormiga[] ants;
Boolean[] sugar;
int[] smell;
int n;
int frames;

void setup() {
  size(600,200);
  background(0);
  frameRate(8);
  frames=0;
  setSugar();
  n=300;
  
  ants = new Hormiga[n];
  for (int i=0;i<n;i++) {
    ants[i] = new Hormiga(int(random(0,width)),int(random(0,height)));
  }
  
//  ants = new Hormiga[n];
//  for (int i=0;i<n/4;i++) {
//    ants[i] = new Hormiga(int(random(0,width)),int(random(-5,-20)));
//  }
//  for (int i=n/4;i<n/2;i++) {
//    ants[i] = new Hormiga(int(random(0,width)),int(height+random(5,20)));
//  }
//  for (int i=n/2;i<3*n/4;i++) {
//    ants[i] = new Hormiga(int(random(-5,-20)),int(random(0,height)));
//  }
//  for (int i=3*n/4;i<n;i++) {
//    ants[i] = new Hormiga(int(width+random(5,20)),int(random(0,height)));
//  }
  
}

void draw() {
  if (frames<1400) {
    frames++;
    background(0);
    for (int i=0;i<ants.length;i++) {
      ants[i].display();
      ants[i].move();
    }
    if (frames<10) {
      save("000"+frames+".png");
    } else if (frames<100) {
      save("00"+frames+".png");
    } else if (frames<1000) {
      save("0"+frames+".png");
    } else {
      save(frames+".png");
    }
    println(frames);
  }
}
