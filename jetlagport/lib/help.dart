import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:jetlagport/splash.dart';
//import 'package:jetlagport/main.dart';

class SecondHelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Screen'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          {
            print('Tap screen');
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Splash()),
            );*/
            Navigator.pushReplacementNamed(context, '/splash');
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
                  'Read, Write, Play',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "As you play through the levels of the sample game, be sure to read the code that accompanies\n" +
                      "each world.  The levels aren't meant to be \"hard\", or even really \"fun\".  They are meant to show\n" +
                      "you how to use the different features of JetLag, and to show you how the same features can\n" +
                      "be used in many different ways, to achieve very different styles of game play.  JetLag has been\n" +
                      "used to make racing games, platformers, side-scrollers, puzzle games, and even re-creations\n" +
                      "of classic Atari games.  The possibilities are endless!\n\n" +
                      "If you're not sure where to start, consider making small changes to the levels, such as changing\n" +
                      "the numbers that are passed to different functions.\n\n" +
                      "Start with the \"Levels.ts\" file in the \"src/game\" folder, then move on to other files in that folder,\n" +
                      "until you have a plan for how to build your next game.",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Screen'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          {
            print('Tap screen');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondHelpScreen()),
            );
            //Navigator.pushReplacementNamed(context, '/secondhelp');
          }
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'The levels of this game demonstrate JetLag features',
                  style: TextStyle(fontSize: 26),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      'assets/images/greenball.png',
                      height: 50,
                      width: 50,
                    ),
                    new Text(
                      'You Control the hero',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Container(
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      'assets/images/blueball.png',
                      height: 50,
                      width: 50,
                    ),
                    new Text(
                      'Collect these goodies',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Container(
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      'assets/images/redball.png',
                      height: 50,
                      width: 50,
                    ),
                    new Text(
                      'Avoid or defeat enemies',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Container(
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      'assets/images/mustardball.png',
                      height: 50,
                      width: 50,
                    ),
                    new Text(
                      'Reach the destination',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Container(
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      'assets/images/purpleball.png',
                      height: 50,
                      width: 50,
                    ),
                    new Text(
                      'These are walls',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Container(
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      'assets/images/greyball.png',
                      height: 50,
                      width: 50,
                    ),
                    new Text(
                      'Throw projectiles',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15.0),
              ),
              Container(
                child: new Text(
                  '(All image files are stored in the assets folder)',
                  style: TextStyle(fontSize: 15),
                ),
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
