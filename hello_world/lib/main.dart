import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[200],
          appBar: AppBar(
            title: Text('Diamond no Jundo'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
              child: Image(
            image: NetworkImage(
                'https://static.wikia.nocookie.net/yahari/images/a/a1/Diamond_no_Jundo_Cover_1.jpg/revision/latest?cb=20200927023455'),
          )))));
}
