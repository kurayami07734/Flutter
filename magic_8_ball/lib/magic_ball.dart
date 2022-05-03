import 'dart:math';

import 'package:flutter/material.dart';

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  void randomize() {
    ballNumber = Random().nextInt(5) + 1;
  }

  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() {
              randomize();
            });
          },
        ),
      ),
    );
  }
}
