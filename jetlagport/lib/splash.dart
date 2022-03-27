import 'package:flutter/material.dart';
import 'package:jetlagport/help.dart';
import 'package:jetlagport/play.dart';

class Splash extends StatelessWidget {
  void _playButton() {
    print('Play chosen!');
  }

  void _quitButton() {
    print('Quit chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new Container(),
        title: Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            'JetLag Demo',
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Text(
              '2D Games for Web and Mobile',
              style: TextStyle(fontSize: 26),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            color: Colors.yellow,
            child: Container(
              // width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Play',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () {
              print('Play chosen!');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LevelSelect()));
            },
          ),
          RaisedButton(
              color: Colors.yellow,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Help',
                  style: TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                ),
              ),
              onPressed: () {
                print('Help chosen!');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpScreen()));
              }),
          RaisedButton(
            color: Colors.yellow,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Quit',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: _quitButton,
          ),
        ],
      ),
    );
  }
}
