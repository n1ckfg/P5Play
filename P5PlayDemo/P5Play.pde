class P5Play {
  
  Cam cam;
  QuadTree quadTree;
  Group allSprites;
  
  boolean spriteUpdate = true;
  
  
  P5Play() {
    init();
  }
  
  void init() {
    cam = new Cam();
    quadTree = new QuadTree();
    allSprites = new Group();
  }
  
  void update() {
    //
  }
  
  void draw() {
    //
  }
  
  void run() {
    //
  }
  
  // ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
  
  Sprite createSprite(float x, float y, int sWidth, int sHeight) {
    Sprite s = new Sprite(x, y, sWidth, sHeight);
    s.depth = allSprites.maxDepth()+1;
    allSprites.add(s);
    return s;
  }
  
  void removeSprite(Sprite sprite) {
    sprite.remove();
  }
  
  void updateSprites(boolean upd) {
    spriteUpdate = upd;
    
    if (spriteUpdate) {
      for (int i=0; i<allSprites.size(); i++) {
        allSprites.get(i).update();
      }
    }
  }
  
  void getSprites() {
    // TODO what does this do?
  }
  
  void drawSprites(Group group) {
    if (group==null) {
      allSprites.draw();
    } else {
      group.draw();
    }
  }
  
  void drawSprite(Sprite sprite) {
    if (sprite != null) sprite.display();
  }
  
  Animation loadAnimation() {
    return new Animation();
  }
  
  SpriteSheet loadSpriteSheet() {
    return new SpriteSheet();
  }
  
  void animation(Animation anim, float x, float y) {
    anim.draw(x, y);
  }
  
}