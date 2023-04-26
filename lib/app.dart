import 'package:flutter/material.dart';
import 'screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Web Views",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Arial",
        textTheme: TextTheme(
          labelLarge: TextStyle(color: Colors.white, fontSize: 18.0),
          titleLarge: TextStyle(color: Colors.red),
        ),
      ),
      home: Home(),
    );
  }
}
