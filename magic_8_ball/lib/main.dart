import 'package:flutter/material.dart';
import 'magic_ball.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[300],
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.indigo,
        ),
        body: magicBall(),
      ),
    ),
  );
}
