import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';
import 'package:jetlagport/elasticBall.dart';
import 'package:jetlagport/frictionBall.dart';
import 'package:jetlagport/mustardball.dart';

import '../elasticBall.dart';
import '../frictionBall.dart';
import '../greenball.dart';
import '../mustardball.dart';
import '../redball.dart';
import '../Transitions/transition13.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level13()));
}

class Level13 extends BaseGame with HasDraggableComponents, HasCollidables {
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
    Vector2 ePosition = Vector2(200, 10);
    Vector2 fPosition = Vector2(200, 300);

    final greenball = Greenball(gPosition, true);
    greenball..sprite = await loadSprite('greenball.png');

    final frictionBall = FrictionBall(fPosition, 13);
    frictionBall..sprite = await loadSprite('purpleball.png');

    final elasticBall = ElasticBall(ePosition, 13);
    elasticBall..sprite = await loadSprite('purpleball.png');

    final mustardball = Mustardball(mPosition, 13);
    mustardball..sprite = await loadSprite('mustardball.png');

    joystick.addObserver(greenball);

    add(elasticBall);
    add(frictionBall);
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
      runApp(Transition13());
    }
    if (gb.getDeathStatus()) {
      runApp(GameWidget(game: Level13()));
    }
  }
}
