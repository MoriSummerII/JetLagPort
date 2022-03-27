import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';

import '../greenball.dart';
import '../mustardball.dart';
import '../Transitions/transition1.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level1()));
}

class Level1 extends BaseGame with HasDraggableComponents, HasCollidables {
  Greenball gb;
  @override
  Future<void> onLoad() async {
    SpriteComponent background = SpriteComponent()
      ..sprite = await loadSprite('fade.png')
      ..size = size;

    add(background);

    Vector2 gPosition = Vector2(10, 10);
    Vector2 mPosition = Vector2(500, 240);

    Greenball greenball = Greenball(gPosition, false);
    Mustardball mustardball = Mustardball(mPosition, 1);

    print('loading assets');
    final joystick =
        JoystickComponent(gameRef: this, directional: JoystickDirectional());
    greenball..sprite = await loadSprite('greenball.png');

    add(greenball);

    joystick.addObserver(greenball);
    add(joystick);

    mustardball..sprite = await loadSprite('mustardball.png');
    add(mustardball);
    gb = greenball;
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (gb.getGoalStatus()) {
      runApp(Transition1());
    }
  }
}
