import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';
import 'package:jetlagport/greenball.dart';

//obstacle configuration
//pass in level: indicate the level of the obstacle
//lengthx: length of the obstacle(must in double)
//heighty: height of the obstacle(must in double)
//shapez: rec for Rectangle and cir for Circle, all in string
class Obstacle extends PositionComponent with Hitbox, Collidable {
  bool _PlayerHit = false;
  int level, shape;
  double lengthx, heighty;
  String shapez;
  Obstacle(
      Vector2 position, this.level, this.lengthx, this.heighty, this.shapez)
      : super(
          position: position,
          size: Vector2(lengthx, heighty),
        ) {
    if (shapez == "rec") {
      final shape = HitboxRectangle();
      addShape(shape);
    } else if (shapez == "cir") {
      final shape = HitboxCircle();
      addShape(shape);
    }

    //TODO: insert method for polygon
  }

  Sprite sprite;

  @override
  void render(Canvas canvas) {
    sprite.render(canvas, position: position, size: size);
    super.render(canvas);
    renderShapes(canvas);
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, Collidable other) {
    if (other is Greenball) {
      _PlayerHit = true;
    }
  }
}
