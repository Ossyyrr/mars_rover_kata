class MarsRover {
  MarsRover({required this.x, required this.y, required this.direction});
  int x;
  int y;
  String direction;

  void executeCommands(String commands) {
    for (var command in commands.toLowerCase().split('')) {
      if (command == 'f') _moveFordward();
      if (command == 'b') _movebackward();
      if (command == 'r') _turnRight();
      if (command == 'l') _turnLeft();
    }
  }

  void _moveFordward() {
    if (isLookingNorth) {
      if (y == 10) {
        y = 0;
      } else {
        y++;
      }
    }
    if (isLookingSouth) {
      if (y == 0) {
        y = 10;
      } else {
        y--;
      }
    }

    if (isLookingEast) {
      if (x == 10) {
        x = 0;
      } else {
        x++;
      }
    }

    if (isLookingWest) {
      if (x == 0) {
        x = 10;
      } else {
        x--;
      }
    }
  }

  bool get isLookingWest => direction == 'W';

  bool get isLookingEast => direction == 'E';

  bool get isLookingSouth => direction == 'S';

  bool get isLookingNorth => direction == 'N';

  void _movebackward() {
    if (isLookingNorth) {
      if (y == 0) {
        y = 10;
      } else {
        y--;
      }
    }
    if (isLookingSouth) {
      if (y == 10) {
        y = 0;
      } else {
        y++;
      }
    }
    if (isLookingEast) {
      if (x == 0) {
        x = 10;
      } else {
        x--;
      }
    }
    if (isLookingWest) {
      if (x == 10) {
        x = 0;
      } else {
        x++;
      }
    }
  }

  void _turnRight() {
    if (isLookingNorth) {
      direction = 'E';
    } else if (isLookingSouth) {
      direction = 'W';
    } else if (isLookingEast) {
      direction = 'S';
    } else if (isLookingWest) {
      direction = 'N';
    }
  }

  void _turnLeft() {
    if (isLookingNorth) {
      direction = 'W';
    } else if (isLookingSouth) {
      direction = 'E';
    } else if (isLookingEast) {
      direction = 'N';
    } else if (isLookingWest) {
      direction = 'S';
    }
  }
}
