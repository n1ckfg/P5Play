class Sprite {

  int depth = 0;
  PVector position;
  PVector previousPosition;
  PVector newPosition;
  float deltaX;
  float deltaY;
  PVector velocity;
  float maxSpeed;
  float friction;
  Collider collider;
  String colliderType;
  boolean removed = false;
    
  Sprite(float x, float y, int sWidth, int sHeight) {
    position = new PVector(x, y);
    previousPosition = new PVector(x, y);
    newPosition = new PVector(x, y);
    deltaX = 0;
    deltaY = 0;
    velocity = new PVector(0,0);
    maxSpeed = -1;
    friction = 0;
    collider = null;
    colliderType = "none";
  }
  
  void update() {
    //
  }
  
  void display() {
    //
  }
  
  void remove() {
    removed = true;

    //quadTree.removeObject(this);

    //when removed from the "scene" also remove all the references in all the groups
    //while (groups.length > 0) {
      //groups[0].remove(this);
    //}
  }

}

class Touching {

  boolean left, right, top, bottom;
  
  Touching() {
    left = false;
    right = false;
    top = false;
    
  }
    
}

/*
  void loadFrames(String _name) {
    try {
        //loads a sequence of frames from a folder
        int filesCounter=0;
        File dataFolder = new File(dataFile(sketchPath()).getAbsolutePath(), "data/"+_name); 
        String[] allFiles = dataFolder.list();
        for (int j=0;j<allFiles.length;j++) {
          if (allFiles[j].toLowerCase().endsWith("png")) {
            filesCounter++;
          }
        }
        //--
        frames = new PImage[filesCounter];
        for (int i=0; i<frames.length; i++) {
          println("Loading " + _name + "/frame" + (i+1) + ".png");
          frames[i] = loadImage("data/"+_name + "/frame" + (i+1) + ".png");
        }
    }catch(Exception e){ }
  }
  
  void loadSpriteSheet(String _name, int _tdx, int _tdy, int _etx, int _ety){
      try {
        //loads a spritesheet from a single image
        PImage fromImg;
        fromImg = loadImage("data/"+_name + ".png");
        int tileX = 1;
        int tileY = 1;
        int tileDimX = _tdx;
        int tileDimY = _tdy;
        int endTileX = _etx;
        int endTileY = _ety;
        //--
        frames = new PImage[_etx*_ety];
        for (int h=0;h<frames.length;h++){
          if (tileX + tileDimX<=(endTileX*tileDimX)) {
            tileX += tileDimX;
          }
          else if (tileY + tileDimY<=(endTileY*tileDimY)) {
            tileY += tileDimY;
            tileX = 1;
          }
          else {
            tileX = 1;
            tileY = 1;
          }
          println("Loading frame" + (h+1) + " from " + _name + ".png");
          frames[h] = fromImg.get(tileX, tileY, tileDimX, tileDimY);
        }
      }catch(Exception e) { }
  }

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //utilities

  void rotateXYZ(float _x, float _y, float _z) {
    rotateX(radians(_x));
    rotateY(radians(_y));
    rotateZ(radians(_z));
  }

  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //basic behaviors

  //Tween movement.  start, end, ease (more = slower).
  float tween(float v1, float v2, float e) {
    v1 += (v2-v1)/e;
    return v1;
  }

  PVector tween3D(PVector v1, PVector v2, PVector e) {
    v1.x += (v2.x-v1.x)/e.x;
    v1.y += (v2.y-v1.y)/e.y;
    v1.z += (v2.z-v1.z)/e.z;
    return v1;
  }
  
  float shake(float v1, float s) {
    v1 += random(s) - random(s);
    return v1;
  }

  float boundary(float v1, float vMin, float vMax) {
    if (v1<vMin) {
      v1 = vMin;
    } 
    else if (v1>vMax) {
      v1=vMax;
    } 
    return v1;
  }

  float gravity(float v1, float v2, float v3) { //y pos, floor num, gravity num
    if (v1<v2) {
      v1 += v3;
    }
    if (v1>v2) {
      v1 = v2;
    }
    return v1;
  }

  //2D Hit Detect.  Assumes center.  x,y,w,h of object 1, x,y,w,h, of object 2.
  boolean hitDetect(float x1, float y1, float w1, float h1, float x2, float y2, float w2, float h2) {
    w1 /= 2;
    h1 /= 2;
    w2 /= 2;
    h2 /= 2; 
    if (x1 + w1 >= x2 - w2 && x1 - w1 <= x2 + w2 && y1 + h1 >= y2 - h2 && y1 - h1 <= y2 + h2) {
      return true;
    } 
    else {
      return false;
    }
  }
  
    //3D Hit Detect.  Assumes center.  xyz, whd of object 1, xyz, whd of object 2.
  boolean hitDetect3D(PVector p1, PVector s1, PVector p2, PVector s2) {
    s1.x /= 2;
    s1.y /= 2;
    s1.z /= 2;
    s2.x /= 2;
    s2.y /= 2; 
    s2.z /= 2; 
    if (  p1.x + s1.x >= p2.x - s2.x && 
          p1.x - s1.x <= p2.x + s2.x && 
          p1.y + s1.y >= p2.y - s2.y && 
          p1.y - s1.y <= p2.y + s2.y &&
          p1.z + s1.z >= p2.z - s2.z && 
          p1.z - s1.z <= p2.z + s2.z
      ) {
      return true;
    } 
    else {
      return false;
    }
  }
*/