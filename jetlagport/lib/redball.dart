import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';
import 'package:jetlagport/greenball.dart';
import 'package:flame/joystick.dart';
import 'dart:math';

class Redball extends PositionComponent
    with Hitbox, Collidable
    implements JoystickListener {
  static const speed = 200;
  bool _PlayerHit = false;
  double currentSpeed = 0;
  double angle = 0;
  bool move = false;
  int level;
  final gameSize = Vector2.zero();
  String direction = 'down';
  Redball(Vector2 position, this.level)
      : super(
          position: position,
          size: Vector2(48, 48),
          anchor: Anchor.center,
        ) {
    addShape(HitboxCircle());
  }

  Sprite sprite;

  @override
  void render(Canvas canvas) {
    sprite.render(canvas, position: position, size: size);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    gameSize.setFrom(size);
  }

  @override
  void update(double dt) {
    if (_PlayerHit) {
      remove();
    }

    //LEVEL 8 MOVEMENT
    if (level == 8) {
      super.update(dt);

      switch (direction) {
        case 'down':
          position.y = y + 2;

          break;
        case 'up':
          position.y = y - 2;
          break;
      }

      if (position.y > 250) {
        direction = 'up';
      }
      if (position.y < 10) {
        direction = 'down';
      }
    }

    //LEVL 9 MOVEMENT
    if (level == 9) {
      super.update(dt);

      switch (direction) {
        case 'down':
          position.y = y + 3.5;
          position.x = x + 1.2;
          break;
        case 'up':
          position.y = y - 3.5;
          position.x = x - 1.2;
          break;
      }

      if (position.y > 250) {
        direction = 'up';
      }
      if (position.y < 10) {
        direction = 'down';
      }
    }

    //LEVEL 10 MOVEMENT
    if (level == 10) {
      super.update(dt);

      moveFromAngle(dt);

      final halfSize = size / 2;
      Vector2.max(Vector2.zero() + halfSize, position, position);
      Vector2.min(gameSize - halfSize, position, position);
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    if (other is Greenball) {
      _PlayerHit = true;
      remove();
    }
  }

  //following three methods used in level 10 only
  @override
  void joystickAction(JoystickActionEvent event) {}

  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event) {
    move = event.directional != JoystickMoveDirectional.idle;
    if (move) {
      angle = event.angle;
      currentSpeed = speed * event.intensity;
    }
  }

  void moveFromAngle(double dtUpdate) {
    final next = Vector2(cos(angle), sin(angle)) * (currentSpeed * dtUpdate);
    //rect = rect.shift(next.toOffset());
    position.addScaled(next, 1);
  }
}
