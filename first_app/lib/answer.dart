import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText = "";
  VoidCallback selectHandler;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(child: Text(answerText), onPressed: selectHandler),
    );
  }
}
