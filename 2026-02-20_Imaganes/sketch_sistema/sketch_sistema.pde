//Moon moon;
PImage sun
Planet earth;

void setup () {
  size (500, 500);
  //moon = new Moon (/*radians(45)*/PI/4, 100, 250, 250);
  earth = new Planet (radians(10), 20, 250, 250, 100);
  sun  = loadImage("sunK.png");
}

void draw () {
  background(0);
  image(sun, 250, 250);  
  earth.Draw();
  //earth.center.add(1, 0);
  earth.Rotate(radians(2));
  //moon.Draw();
  //moon.Rotate(radians(3));
}
