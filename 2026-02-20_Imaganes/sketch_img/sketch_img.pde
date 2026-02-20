PImage image;
PVector center;
ArrayList<PVector> stars;
void setup () {
  size (500,500);
  image = loadImage("earthK.png");
  if(image == null ) {
    println("No existe la imagen");
  }
  center = new PVector(100, 0);
  stars = new ArrayList<PVector>();
  for (int k = 0; k < 10000; k++) {
    float x = random(-1000,500);
    float y = random(500);
    stars.add(new PVector(x,y));
  }
}

void Space () {
  stroke(255);
  for (PVector star:stars) {
    point(star.x, star.y);
    star.add(0.1,0);
  }
}


void draw () {
  background(0);
  Space();
  imageMode(CENTER);
  //rotate(radians(millis()/100.0));
  //center.rotate(radians(millis()/100.0));
  center.rotate(radians(0.1));
  image(image, center.x, center.y);
  //circle(width/2, height/2, 10);
}
