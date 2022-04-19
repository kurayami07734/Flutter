import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class QA {
  String question = '';
  List<String> answers = [];
  QA(this.question, this.answers);
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void _checkAnswer() {
    setState(() => {_questionIndex = (_questionIndex + 1) % 3});
  }

  List<QA> qaList = [
    QA('Who is your waifu?', ['Kurisu', 'Hanekawa', 'Shinobu', 'Oikura']),
    QA('Who is favourite mathematician?',
        ['Euler', 'Hardy', 'Gauss', 'Ramanujan']),
    QA('Who is most unrecognized?', ['Green', 'Heaviside'])
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("This is the app bar title")),
        body: Column(
          children: [
            Question(
              qaList[_questionIndex].question,
            ),
            ...(qaList[_questionIndex].answers)
                .map((ans) => Answer(_checkAnswer, ans))
                .toList()
          ],
        ),
      ),
    );
  }
}
