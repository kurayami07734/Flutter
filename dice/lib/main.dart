import 'package:flutter/material.dart';
import './dice.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.indigo,
      ),
      body: Dice(),
    ),
  ));
}
