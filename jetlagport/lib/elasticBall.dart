import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';
import 'package:jetlagport/greenball.dart';

class ElasticBall extends PositionComponent with Hitbox, Collidable {
  bool _PlayerHit = false;
  int level;
  ElasticBall(Vector2 position, this.level)
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
  void update(double dt) {
    if (_PlayerHit) {
      if (level != 5) {
        remove();
      }
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    if (other is Greenball) {
      print("elasticBall Hit");
    }
  }
}
