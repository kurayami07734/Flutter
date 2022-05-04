import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class xylophone extends StatelessWidget {
  xylophone({Key? key}) : super(key: key);
  var colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];
  var player = AudioCache();
  void playSound(int i) {
    player.play('note$i.wav');
  }

  Expanded buildKey(int i) {
    return Expanded(
      child: TextButton(
        child: Container(color: colors[i - 1]),
        onPressed: () => playSound(i),
      ),
    );
  }

  var nums = [1, 2, 3, 4, 5, 6, 7];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: nums.map((e) => buildKey(e)).toList(),
    );
  }
}
