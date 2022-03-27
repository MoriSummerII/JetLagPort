import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import './Levels/level1.dart';
import './Levels/level2.dart';
import './Levels/level4.dart';
import './Levels/level5.dart';
import './Levels/level6.dart';
import './Levels/level7.dart';
import './Levels/level8.dart';
import './Levels/level9.dart';
import './Levels/level10.dart';
import './Levels/level12.dart';
import './Levels/level13.dart';
import './Levels/level14.dart';
import './Levels/level16.dart';
import './Levels/level18.dart';

class LevelSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Container(
              width: double.infinity,
              child: Text(
                'Choose a Level',
                textAlign: TextAlign.center,
                textScaleFactor: 1.45,
              ),
            ),
            backgroundColor: Colors.brown),
        body: Container(
          margin: EdgeInsets.all(5),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 1',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 1 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level1()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 2',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 2 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level2()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 3',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  3Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 4',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 4 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level4()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 5',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 5 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level5()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 6',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 6 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level6()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 7',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 7 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level7()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 8',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 8 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level8()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 9',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 9 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level9()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 10',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 10 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level10()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 11',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  11 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 12',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 12 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level12()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 13',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 13 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level13()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 14',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 14 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level14()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 15',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  15 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 16',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 16 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level16()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 17',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  17 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                        child: Text('Level 18',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        color: Colors.brown,
                        onPressed: () {
                          print('Level 18 Chosen!');

                          //runApp(GameWidget(game: Level1()));
                          // start app
                          runApp(
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Stack(
                                children: [
                                  // placeholder for game
                                  GameWidget(game: Level18()),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 19',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  19 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 20',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  20 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 21',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 21  Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 22',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 22 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 23',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 23 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 24',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 24  Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 25',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 25 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 26',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 26 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 27',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 27 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 28',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 28 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 29',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 29 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 30',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 30 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 31',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 31  Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 32',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 32  Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 33',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  33 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 34',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 34 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 35',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 35 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 36',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 36 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 37',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 37 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 38',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 38 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 39',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 39 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 40',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 40 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 41',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level41  Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 42',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 42 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 43',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 43 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 44',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 44 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 45',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 45 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 46',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 46 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 47',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 47 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 48',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 48  Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 49',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level  49 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 50',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 50 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 51',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 51 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 52',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 52 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 53',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 53 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 54',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 54 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 55',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 55 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 56',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 56 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 57',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 57 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 58',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 58 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 59',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 59 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 60',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 60 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 61',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 61 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 62',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 62 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 63',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 63 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 64',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 64 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 65',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 65 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 66',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 66 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 67',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 67 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 68',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 68 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 69',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 69 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 70',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 70 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 71',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 71 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 72',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 72 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 73',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 73 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 74',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 74 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 75',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 75 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 76',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 76 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 77',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 77 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 78',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 78 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 79',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 79 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 80',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 80 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 81',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 81 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 82',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 82 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 83',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 83  Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 84',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 84 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 85',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 85 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 86',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 86 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 87',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 87  Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 88',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 88 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 89',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 89 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 90',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 90 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 91',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 91 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 92',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 92  Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 93',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 93 Chosen!'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 94',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 94 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 95',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 95 Chosen!'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: RaisedButton(
                      child: Text('Level 96',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      color: Colors.brown,
                      onPressed: () => print('Level 96  Chosen!'),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
