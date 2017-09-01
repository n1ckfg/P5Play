class P5Play {
  
  Cam cam;
  ArrayList<Sprite> allSprites;
  
  boolean spriteUpdate = true;
  int 
  
  P5Play() {
    init();
  }
  
  Sprite createSprite(float x, float y, int sWidth, int sHeight) {
    Sprite s = new Sprite(x, y, sWidth, sHeight);
    s.depth = 
    return sprite;
  }
  
  void removeSprite(Sprite sprite) {
    //
  }
  
  void init() {
    cam = new Cam();
    allSprites = new ArrayList<Sprite>();
  }
  
}