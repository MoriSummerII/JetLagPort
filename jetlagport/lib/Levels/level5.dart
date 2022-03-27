import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';
import 'dart:ui';

import '../mustardball.dart';
import '../greenball.dart';
import '../Transitions/transition5.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level5()));
}

class Level5 extends BaseGame with HasDraggableComponents, HasCollidables {
  bool running = true;
  Greenball gb1;
  Greenball gb2;

  Size screenSize;
  int goalCount = 0;

  @override
  Future<void> onLoad() async {
    print('loading assets');
    final joystick =
        JoystickComponent(gameRef: this, directional: JoystickDirectional());
    SpriteComponent background = SpriteComponent()
      ..sprite = await loadSprite('fade.png')
      ..size = size;

    add(background);
    final greenball1 = Greenball(Vector2(10, 250), true);
    final greenball2 = Greenball(Vector2(100, 250), true);

    final mustardball1 = Mustardball(Vector2(500, 10), 5);

    joystick.addObserver(greenball1);
    joystick.addObserver(greenball2);

    greenball1..sprite = await loadSprite('greenball.png');
    greenball2..sprite = await loadSprite('greenball.png');

    mustardball1..sprite = await loadSprite('mustardball.png');

    add(mustardball1);
    add(greenball2);
    add(greenball1);
    add(joystick);
    add(ScreenCollidable());
    gb1 = greenball1;
    gb2 = greenball2;
  }

  void resize(Size size) {
    screenSize = size;
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (gb1.getGoalStatus() && gb2.getGoalStatus()) {
      print('Next Level!');
      runApp(Transition5());
    }
  }
}
