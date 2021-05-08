import 'package:flutter/material.dart';
import 'song.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
        ),
      debugShowCheckedModeBanner: false,
      home: Song(),
    );
  }
}
