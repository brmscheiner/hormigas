void setSugar() {
  PImage img;
  img = loadImage("atta.jpg");
  image(img,0,0);
  
  loadPixels();
  sugar = new Boolean[width*height];
  int n = 0;
  for (int i=0;i<pixels.length;i++) {
    if (red(pixels[i])>20 && blue(pixels[i])<200) {
      sugar[i] = true;
//      pixels[i] = color(0,0,0);
      n++;
    }
  }
  updatePixels();
}

//void setSmell() {
//  smell = new int[width*height];
//  for (int i=0;i<width;i++) {
//    for (int j=0;j<height;j++) {
//      
//    }
//  }
//}

