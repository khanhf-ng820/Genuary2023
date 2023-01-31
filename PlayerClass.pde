class Player {
  Sprite sprite;
  PVector position;
  int speed;
  Player(int character) {
    switch (character) {
      case AQUA:
        sprite = aquaSprite;
        break;
    }
    
    position = new PVector(0, 0);
    speed = 5;
  }
}
