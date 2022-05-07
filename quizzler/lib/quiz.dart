import 'package:flutter/material.dart';
import './question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Icon checkMark = const Icon(Icons.check, color: Colors.green);
  Icon crossMark = const Icon(Icons.close, color: Colors.red);
  List<Icon> scoreKeeper = [];
  List<Question> ques = [
    Question('Hachiman yearns for human connection', true),
    Question('Senjougahara is a tsundere', false),
    Question('Eren is a hero', false)
  ];
  int quesIndex = 0;

  void changeQuestion() {
    quesIndex = (quesIndex + 1) % ques.length;
  }

  void isGameOver() {
    if (quesIndex == ques.length - 1) {
      int score = 0, total = ques.length;
      for (var icon in scoreKeeper) {
        if (icon == checkMark) score++;
      }
      Alert(
              context: context,
              title: "questions are over",
              desc: "Score: $score / $total")
          .show();
      scoreKeeper.clear();
    }
  }

  void updateScore(bool ans) {
    if (ques[quesIndex].checkAnswer(ans)) {
      scoreKeeper.add(checkMark);
    } else {
      scoreKeeper.add(crossMark);
    }
    isGameOver();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              child: Text(
                ques[quesIndex].question(),
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              padding: EdgeInsets.all(10),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => {
                setState(() {
                  updateScore(true);
                  changeQuestion();
                })
              },
              child: const Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () => {
                setState(() {
                  updateScore(false);
                  changeQuestion();
                })
              },
              child: const Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.red),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
