import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';
import 'package:jetlagport/mustardball.dart';

import '../greenball.dart';
import '../mustardball.dart';
import '../Transitions/transition2.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level2()));
}

class Level2 extends BaseGame with HasDraggableComponents, HasCollidables {
  Greenball gb;
  @override
  Future<void> onLoad() async {
    print('loading assets');

    SpriteComponent background = SpriteComponent()
      ..sprite = await loadSprite('fade.png')
      ..size = size;

    add(background);

    final joystick =
        JoystickComponent(gameRef: this, directional: JoystickDirectional());
    Vector2 gPosition = Vector2(10, 10);
    Vector2 mPosition = Vector2(500, 240);

    final greenball = Greenball(gPosition, true);
    greenball..sprite = await loadSprite('greenball.png');

    final mustardball = Mustardball(mPosition, 2);
    mustardball..sprite = await loadSprite('mustardball.png');

    joystick.addObserver(greenball);
    add(greenball);
    add(joystick);
    add(mustardball);
    add(ScreenCollidable());

    gb = greenball;
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (gb.getGoalStatus()) {
      runApp(Transition2());
    }
  }
}
