import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/joystick.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart' hide Image, Draggable;
import 'package:flame/geometry.dart';

import './mustardball.dart';
import './redball.dart';
import './obstacle.dart';
import './goodies.dart';
import './elasticBall.dart';

class Greenball extends PositionComponent
    with Hitbox, Collidable
    implements JoystickListener {
  double speed = 300.0;
  double tS = 300.0;
  @override
  Anchor anchor = Anchor.center;
  final gameSize = Vector2.zero();
  bool walls;
  Greenball(
    Vector2 position,
    this.walls,
  ) : super(
          position: position,
          size: Vector2(48, 48),
          anchor: Anchor.center,
        ) {
    addShape(HitboxCircle());
  }

  double currentSpeed = 0;
  double angle = 0;
  bool move = false;
  Sprite sprite;
  bool _reachedGoal = false;
  bool _dead = false;
  bool _hitObstacle = false;
  bool _hitGoodies = false;
  bool _isWallHit = false;
  int bouncingEffect = 0;
  double strength = 10;
  bool str_status = false;
  Stopwatch _sw = Stopwatch();

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
    super.update(dt);
    if (_sw == null || !_sw.isRunning) {
      speed = tS;
    }

    if (_hitObstacle) {
      move = false;
      if (bouncingEffect == 0) {
        bouncingEffect = 20;
      }
      bouncingFromObstacle(dt);
    }
    if (move) {
      moveFromAngle(dt);
    }
    if (walls) {
      final halfSize = size / 2;
      Vector2.max(Vector2.zero() + halfSize, position, position);
      Vector2.min(gameSize - halfSize, position, position);
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    if (other is ScreenCollidable) {
      _isWallHit = true;
      return;
    }
    if (other is Mustardball) {
      print('hit mustard!');
      remove();
      _reachedGoal = true;
    }
    if (other is Redball) {
      if (str_status == true) {
        strength -= 4;
        print(strength);
        if (strength <= 0) {
          print('str reached 0, you die');
          remove();
          _dead = true;
        }
      } else {
        print('died!');
        remove();
        _dead = true;
      }
    }
    if (other is Obstacle) {
      _hitObstacle = true;
    }

    if (other is Goodies) {
      print("blue ball collected");
      _hitGoodies = true;
    }
    if (other is ElasticBall) {
      if (_sw == null || !_sw.isRunning) {
        _sw.frequency;
        _sw.start();
        speed = 2000;
      } else if (_sw.elapsedMilliseconds > 20) {
        speed = 300;
        _sw.stop();
        _sw.reset();
      }

      print(_sw.elapsedMilliseconds);
    }
  }

  bool getGoalStatus() {
    return _reachedGoal;
  }

  bool getDeathStatus() {
    return _dead;
  }

  bool getObstacleStatus() {
    return _hitObstacle;
  }

  bool getGoodiesStatus() {
    return _hitGoodies;
  }

  void changeStatus() {
    str_status = true;
  }

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

// kaida bouncning effect
  void bouncingFromObstacle(double dtUpdate) {
    if (bouncingEffect != 0) {
      final next = Vector2(cos(angle), sin(angle)) * (-currentSpeed * dtUpdate);
      //rect = rect.shift(next.toOffset());
      position.addScaled(next, 1);
      bouncingEffect--;
    }

    if (bouncingEffect == 0) {
      _hitObstacle = false;
    }
  }

  void moveFromAngle(double dtUpdate) {
    final next = Vector2(cos(angle), sin(angle)) * (currentSpeed * dtUpdate);
    position.addScaled(next, 1);
  }
}
