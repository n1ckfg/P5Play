class Group extends ArrayList<Sprite> {

  Group() {
    super();
    
  }
  
  void draw() {
    //
  }
  
  int maxDepth() {
    int returns = 0;
    for (int i=0; i<this.size(); i++) {
      Sprite s = this.get(i);
      if (s.depth > returns) returns = s.depth;
    }
    return returns;
  }
  
  int minDepth() {
    int returns = 99999;
    for (int i=0; i<this.size(); i++) {
      Sprite s = this.get(i);
      if (s.depth < returns) returns = s.depth;
    }
    return returns;
  }
}