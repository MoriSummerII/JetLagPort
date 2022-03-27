import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flame/components.dart';
import 'package:jetlagport/mustardball.dart';
import '../greenball.dart';
import '../mustardball.dart';

import '../Transitions/transition16.dart';

void main() async {
  print('test print function');
  runApp(GameWidget(game: Level16()));
}

class Level16 extends BaseGame with HasDraggableComponents, HasCollidables {
  Greenball gb;
  Stopwatch _sw;
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

    final greenball = Greenball(gPosition, true);
    greenball..sprite = await loadSprite('greenball.png');

    final mustardball = Mustardball(mPosition, 13);
    mustardball..sprite = await loadSprite('mustardball.png');

    joystick.addObserver(greenball);

    add(greenball);
    add(joystick);
    add(mustardball);
    /*
      Add(goodies);
    */
    add(ScreenCollidable());

    gb = greenball;
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (_sw == null || !_sw.isRunning) {
      _sw.frequency;
      _sw.start();
    } else if (_sw.elapsedMilliseconds > 20000) {
      _sw.stop();
      _sw.reset();
      runApp(GameWidget(game: Level16()));
    }
    if (gb.getGoalStatus()) {
      // &&goodies are all collected
      runApp(Transition16());
    }
    if (gb.getDeathStatus()) {
      runApp(GameWidget(game: Level16()));
    }
  }
}
