import 'package:flutter/material.dart';
import './dice.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.red,
      ),
      body: Dice(),
    ),
  ));
}
