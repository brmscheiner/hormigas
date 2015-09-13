

void setSugar() {
  sugar = new Boolean[width*height];
  for (int i=0;i<width;i++) {
    for (int j=0;j<height;j++) {
      sugar[j*i+j] = true;
    }
  }
}

