import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';

import '../greenball.dart';
import '../mustardball.dart';
import '../obstacle.dart';
import '../Transitions/transition12.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level12()));
}

class Level12 extends BaseGame with HasDraggableComponents, HasCollidables {
  Greenball gb;
  @override
  Future<void> onLoad() async {
    SpriteComponent background = SpriteComponent()
      ..sprite = await loadSprite('fade.png')
      ..size = size;

    add(background);

    Vector2 gPosition = Vector2(10, 10);
    Vector2 mPosition = Vector2(500, 240);
    Vector2 oPosition1 = Vector2(200, 200);
    Vector2 oPosition2 = Vector2(300, 50);

    Greenball greenball = Greenball(gPosition, false);
    Mustardball mustardball = Mustardball(mPosition, 12);
    Obstacle obstacle1 = Obstacle(oPosition1, 12, 100.0, 100.0, "rec");
    Obstacle obstacle2 = Obstacle(oPosition2, 12, 50.0, 50.0, "cir");

    print('loading assets');
    final joystick =
        JoystickComponent(gameRef: this, directional: JoystickDirectional());
    greenball..sprite = await loadSprite('greenball.png');

    add(greenball);

    joystick.addObserver(greenball);
    add(joystick);

    mustardball..sprite = await loadSprite('mustardball.png');
    add(mustardball);

    obstacle1..sprite = await loadSprite('blueball.png');
    add(obstacle1);
    obstacle2..sprite = await loadSprite('purpleball.png');
    add(obstacle2);

    gb = greenball;
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (gb.getGoalStatus()) {
      runApp(Transition12());
    }
  }
}
