import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';
import 'package:jetlagport/mustardball.dart';

import '../greenball.dart';
import '../mustardball.dart';
import '../redball.dart';
import '../Transitions/transition10.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level10()));
}

class Level10 extends BaseGame with HasDraggableComponents, HasCollidables {
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
    Vector2 gPosition = Vector2(10, 240);
    Vector2 mPosition = Vector2(500, 10);
    Vector2 rPosition = Vector2(400, 70);

    final greenball = Greenball(gPosition, true);
    greenball..sprite = await loadSprite('greenball.png');

    final mustardball = Mustardball(mPosition, 10);
    mustardball..sprite = await loadSprite('mustardball.png');

    final redball = Redball(rPosition, 10);
    redball..sprite = await loadSprite('redball.png');

    joystick.addObserver(greenball);
    joystick.addObserver(redball);
    add(greenball);
    add(joystick);
    add(mustardball);
    add(redball);
    add(ScreenCollidable());

    gb = greenball;
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (gb.getGoalStatus()) {
      runApp(Transition10());
    }
    if (gb.getDeathStatus()) {
      runApp(GameWidget(game: Level10()));
    }
  }
}
