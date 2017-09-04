P5Play p5Play;

void setup() {
  size(640, 360, P3D);
  pixelDensity(displayDensity());
  p5Play = new P5Play();
}

void draw() {
  background(0);
  p5Play.run();
  surface.setTitle(""+frameRate);
}