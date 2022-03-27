import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';

import '../greenball.dart';
import '../mustardball.dart';
import '../goodies.dart';
import '../Transitions/transition14.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level14()));
}

class Level14 extends BaseGame with HasDraggableComponents, HasCollidables {
  Greenball gb;
  @override
  Future<void> onLoad() async {
    SpriteComponent background = SpriteComponent()
      ..sprite = await loadSprite('fade.png')
      ..size = size;

    add(background);

    Vector2 gPosition = Vector2(10, 10);
    Vector2 mPosition = Vector2(500, 240);
    Vector2 gooPosition1 = Vector2(10, 200);
    Vector2 gooPosition2 = Vector2(10, 150);

    Greenball greenball = Greenball(gPosition, false);
    Mustardball mustardball = Mustardball(mPosition, 12);
    Goodies goodies1 = Goodies(gooPosition1, 14, 50.0, 50.0, "cir");
    Goodies goodies2 = Goodies(gooPosition2, 14, 50.0, 50.0, "cir");

    print('loading assets');
    final joystick =
        JoystickComponent(gameRef: this, directional: JoystickDirectional());
    greenball..sprite = await loadSprite('greenball.png');

    add(greenball);

    joystick.addObserver(greenball);
    add(joystick);

    mustardball..sprite = await loadSprite('mustardball.png');
    add(mustardball);

    goodies1..sprite = await loadSprite('blueball.png');
    add(goodies1);
    goodies2..sprite = await loadSprite('blueball.png');
    add(goodies2);

    gb = greenball;
  }

  @override
  void update(double dt) {
    int l14count = 0; //counter for level 14, in level 14 we need two blue balls
    bool l14check =
        false; //checker for level 14. After two goddies were collected, return true.
    super.update(dt);
    if (gb.getGoalStatus()) {
      if (l14check) {
        runApp(Transition14());
      }
    }

    if (gb.getGoodiesStatus()) {
      l14count++;
      if (l14count == 2) {
        print("target reach");
        l14check = true;
      }
    }
  }
}
