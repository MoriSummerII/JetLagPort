import 'package:flutter/material.dart';
import 'package:jetlagport/Levels/level2.dart';
import 'package:flame/game.dart';

class Transition1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: Container(
              width: double.infinity,
            ),
            backgroundColor: Colors.black),
        body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              {
                print('Tap screen');
                runApp(GameWidget(game: Level2()));
              }
            },
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Great Job\n\n Reach the Destination to win this level",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
