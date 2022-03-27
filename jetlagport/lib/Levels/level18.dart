import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';
import 'package:jetlagport/mustardball.dart';

import '../greenball.dart';
import '../mustardball.dart';
import '../redball.dart';
import '../Transitions/transition18.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level18()));
}

class Level18 extends BaseGame with HasDraggableComponents, HasCollidables {
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
    Vector2 mPosition = Vector2(700, 280);
    Vector2 r1Position = Vector2(400, 180);
    Vector2 r2Position = Vector2(600, 280);
    Vector2 r3Position = Vector2(700, 180);

    final greenball = Greenball(gPosition, true);
    greenball..sprite = await loadSprite('greenball.png');

    final mustardball = Mustardball(mPosition, 7);
    mustardball..sprite = await loadSprite('mustardball.png');

    final redball1 = Redball(r1Position, 8);
    redball1..sprite = await loadSprite('redball.png');

    final redball2 = Redball(r2Position, 9);
    redball2..sprite = await loadSprite('redball.png');

    final redball3 = Redball(r3Position, 7);
    redball3..sprite = await loadSprite('redball.png');
    joystick.addObserver(greenball);
    add(greenball);
    add(joystick);
    add(mustardball);
    add(redball1);
    add(redball2);
    add(redball3);

    add(ScreenCollidable());

    gb = greenball;
    gb.changeStatus();
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (gb.getGoalStatus()) {
      runApp(Transition18());
    }
    if (gb.getDeathStatus()) {
      runApp(GameWidget(game: Level18()));
    }
  }
}
