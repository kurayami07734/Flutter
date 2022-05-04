import 'package:flutter/material.dart';
import './xylophone.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.black,
    body: SafeArea(child: xylophone()),
  )));
}
