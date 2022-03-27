import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jetlagport/help.dart';
import 'package:jetlagport/play.dart';
import 'splash.dart';
import 'dart:ui';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft]);

  // Hide status bar
  await SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  BaseGame game;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JetLag Game',
      theme: ThemeData(
        primaryColor: Colors.brown,
      ),
      home: new Splash(),
      routes: {
        '/splash': (_) => new Splash(),
        '/firsthelp': (_) => new HelpScreen(),
        '/secondhelp': (_) => new SecondHelpScreen(),
        '/play': (_) => new LevelSelect(),
      }, //  Splash will be our home screen
    );
  }
}
