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
    if (direction == 'N') y++;
    if (direction == 'S') y--;
    if (direction == 'E') x++;
    if (direction == 'W') x--;
  }

  void _movebackward() {
    if (direction == 'N') y--;
    if (direction == 'S') y++;
    if (direction == 'E') x--;
    if (direction == 'W') x++;
  }

  void _turnRight() {
    if (direction == 'N') {
      direction = 'E';
    } else if (direction == 'S') {
      direction = 'W';
    } else if (direction == 'E') {
      direction = 'S';
    } else if (direction == 'W') {
      direction = 'N';
    }
  }

  void _turnLeft() {
    if (direction == 'N') {
      direction = 'W';
    } else if (direction == 'S') {
      direction = 'E';
    } else if (direction == 'E') {
      direction = 'N';
    } else if (direction == 'W') {
      direction = 'S';
    }
  }
}
