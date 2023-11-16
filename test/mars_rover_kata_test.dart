import 'dart:math';

import 'package:mars_rover_kata/mars.dart';
import 'package:mars_rover_kata/mars_rover.dart';
import 'package:test/test.dart';

void main() {
  test('should return initial position and initial direction at start', () {
    final MarsRover marsRover = MarsRover(x: 4, y: 6, direction: 'N');
    expect(marsRover.x, 4);
    expect(marsRover.y, 6);
    expect(marsRover.direction, 'N');
  });

  test('should move fordward', () {
    int randomX = 5;
    int randomY = 5;

    MarsRover marsRover = MarsRover(x: randomX, y: randomY, direction: 'N');
    marsRover.executeCommands('f');
    expect(marsRover.y, randomY + 1);
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'S');
    marsRover.executeCommands('f');
    expect(marsRover.y, randomY - 1);
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'E');
    marsRover.executeCommands('f');
    expect(marsRover.x, randomX + 1);
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'W');
    marsRover.executeCommands('f');
    expect(marsRover.x, randomX - 1);
  });

  test('should move backward', () {
    int randomX = 5;
    int randomY = 5;

    MarsRover marsRover = MarsRover(x: randomX, y: randomY, direction: 'N');
    marsRover.executeCommands('b');
    expect(marsRover.y, randomY - 1);
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'S');
    marsRover.executeCommands('b');
    expect(marsRover.y, randomY + 1);
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'E');
    marsRover.executeCommands('b');
    expect(marsRover.x, randomX - 1);
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'W');
    marsRover.executeCommands('b');
    expect(marsRover.x, randomX + 1);
  });
  test('should move around sphere', () {
    int maxX = Mars().maxX;
    int maxY = Mars().maxY;
    int minX = Mars().minX;
    int minY = Mars().minY;

    int random = Random().nextInt(10);

    MarsRover marsRover = MarsRover(x: random, y: minY, direction: 'N');
    marsRover.executeCommands('b');
    expect(marsRover.y, maxY);
    marsRover = MarsRover(x: random, y: maxY, direction: 'S');
    marsRover.executeCommands('b');
    expect(marsRover.y, minY);
    marsRover = MarsRover(x: minX, y: random, direction: 'E');
    marsRover.executeCommands('b');
    expect(marsRover.x, maxX);
    marsRover = MarsRover(x: maxX, y: random, direction: 'W');
    marsRover.executeCommands('b');
    expect(marsRover.x, minX);
  });

  test('should turn right', () {
    int randomX = Random().nextInt(10);
    int randomY = Random().nextInt(10);

    MarsRover marsRover = MarsRover(x: randomX, y: randomY, direction: 'N');
    marsRover.executeCommands('r');
    expect(marsRover.direction, 'E');
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'S');
    marsRover.executeCommands('r');
    expect(marsRover.direction, 'W');
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'E');
    marsRover.executeCommands('r');
    expect(marsRover.direction, 'S');
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'W');
    marsRover.executeCommands('r');
    expect(marsRover.direction, 'N');
  });

  test('should turn left', () {
    int randomX = Random().nextInt(10);
    int randomY = Random().nextInt(10);

    MarsRover marsRover = MarsRover(x: randomX, y: randomY, direction: 'N');
    marsRover.executeCommands('l');
    expect(marsRover.direction, 'W');
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'S');
    marsRover.executeCommands('l');
    expect(marsRover.direction, 'E');
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'E');
    marsRover.executeCommands('l');
    expect(marsRover.direction, 'N');
    marsRover = MarsRover(x: randomX, y: randomY, direction: 'W');
    marsRover.executeCommands('l');
    expect(marsRover.direction, 'S');
  });
}
